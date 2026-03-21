#!/bin/bash

####################
# Author : Chaitanya
# Date : 24/02/2026
# Version : v2
#
# This script reports AWS resource usage
# and sends it via email
####################

# Exit on error
set -e

# Variables
OUTPUT_FILE="/home/ubuntu/aws-resource-tracker/output.txt"
EMAIL="chaitanyaarasada300@gmail.com"
SUBJECT="Daily AWS Resource Usage Report"

# Clear old file
> $OUTPUT_FILE

echo "===== AWS RESOURCE REPORT =====" >> $OUTPUT_FILE
echo "Generated on: $(date)" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# S3 Buckets
echo "===== S3 Buckets =====" >> $OUTPUT_FILE
aws s3 ls >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# EC2 Instances
echo "===== EC2 Instance IDs =====" >> $OUTPUT_FILE
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId' >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Lambda Functions
echo "===== Lambda Functions =====" >> $OUTPUT_FILE
aws lambda list-functions | jq -r '.Functions[].FunctionName' >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# IAM Users
echo "===== IAM Users =====" >> $OUTPUT_FILE
aws iam list-users | jq -r '.Users[].UserName' >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Send Email
mail -s "$SUBJECT" $EMAIL < $OUTPUT_FILE

echo "Report sent successfully!"
