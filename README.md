# AWS-Resource-Tracker

📌 Project Overview: 

This project is a cloud automation solution built using Bash scripting and AWS CLI to monitor AWS resources and generate daily usage reports. The objective of this project is to automate the process of tracking infrastructure resources in an AWS environment and improve visibility into cloud usage. Instead of manually checking the AWS Management Console, the script programmatically retrieves information about key services such as Amazon S3 buckets, EC2 instance IDs, Lambda functions, and IAM users.

The script is scheduled using a cron job to execute automatically every day at 8 PM, ensuring consistent and reliable monitoring of the cloud environment. During execution, the output is stored in a log file for auditing and troubleshooting purposes. In addition to logging, email notification functionality is integrated so that a resource tracking report is automatically sent to stakeholders at 8 PM each day. This ensures that managers or team members receive timely updates about infrastructure usage without manually reviewing logs.

By combining Linux scheduling, shell scripting, AWS CLI interaction, and automated email reporting, this project demonstrates practical DevOps and Cloud Support skills such as infrastructure monitoring, automation, logging, alerting, and operational visibility. This implementation reflects real-world cloud automation practices used to maintain cost awareness, monitor resource creation, and improve overall infrastructure management.

⚙️ How It Works: 

1. A Bash script interacts with AWS services using AWS CLI  
2. It fetches resource details (S3, EC2, Lambda, IAM)  
3. The output is written to a report file  
4. A cron job schedules the script to run daily at 8 PM  
5. The report is sent via email automatically  
6. Logs are maintained for debugging and auditing  

---

## 🛠 Technologies Used

- Linux (Ubuntu)
- Bash Scripting
- AWS CLI
- Cron Scheduler
- JSON Parsing using `jq`
- Mail Utilities (for email notifications)

---

## 📂 Project Structure
```
aws-resource-tracker/
│── aws_resource_tracker.sh
│── cron.log
│── README.md
```
## 📜 Script Features

- Automated AWS resource tracking  
- Daily scheduled execution using cron  
- Email reporting functionality  
- JSON parsing with `jq` for clean output  
- Logging for monitoring and debugging  
- Error handling using `set -e`  

---
Runs daily at 8 PM
Logs both output and errors into cron.log
📧 Email Notification
Sends daily AWS resource usage report via email
Uses Linux mail utilities (mail)
Ensures stakeholders receive updates automatically
🔐 Prerequisites

Before running this project, ensure:

1. AWS CLI is installed and configured
```
aws configure
```
2. Required IAM Permissions
s3:ListBucket
ec2:DescribeInstances
lambda:ListFunctions
iam:ListUsers

3. Install Dependencies
```
sudo apt update
sudo apt install jq mailutils -y
```
▶️ How to Run Manually
```
bash aws_resource_tracker.sh
```


📈 Use Cases
Daily AWS resource monitoring
Cost awareness and tracking
Infrastructure auditing
DevOps automation practice
Cloud environment visibility
🚀 Future Enhancements
Integrate with AWS SNS instead of email
Add CloudWatch metrics monitoring
Filter only running EC2 instances
Add Slack/Teams notifications
Convert to Python using Boto3
Add cost estimation feature

👨‍💻 Author

Chaitanya Arasada

⭐ Conclusion

This project showcases hands-on experience with AWS automation, Linux scripting, and cloud monitoring. It reflects real-world DevOps practices used in production environments to ensure visibility, efficiency, and reliability in cloud infrastructure management.
