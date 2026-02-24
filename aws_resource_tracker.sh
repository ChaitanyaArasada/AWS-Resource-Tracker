#!/bin/bash

####################
# Author : Chaitanya
# Date : 24/02/2026
# Version : v1
#
# This script will report AWS resource usage
####################

# Debug mode
set -x

# list s3 buckets
echo "Print list of S3 buckets"
aws s3 ls

# list EC2 instances
echo "Print list of EC2 Instance IDs"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda functions
echo "Print list of Lambda functions"
aws lambda list-functions

# list IAM users
echo "Print list of IAM users"
aws iam list-users
