# AWS-Resource-Tracker

📌 Project Overview: 

This project is a cloud automation solution built using Bash scripting and AWS CLI to monitor AWS resources and generate daily usage reports. The objective of this project is to automate the process of tracking infrastructure resources in an AWS environment and improve visibility into cloud usage. Instead of manually checking the AWS Management Console, the script programmatically retrieves information about key services such as Amazon S3 buckets, EC2 instance IDs, Lambda functions, and IAM users.

The script is scheduled using a cron job to execute automatically every day at 8 PM, ensuring consistent and reliable monitoring of the cloud environment. During execution, the output is stored in a log file for auditing and troubleshooting purposes. In addition to logging, email notification functionality is integrated so that a resource tracking report is automatically sent to stakeholders at 8 PM each day. This ensures that managers or team members receive timely updates about infrastructure usage without manually reviewing logs.

By combining Linux scheduling, shell scripting, AWS CLI interaction, and automated email reporting, this project demonstrates practical DevOps and Cloud Support skills such as infrastructure monitoring, automation, logging, alerting, and operational visibility. This implementation reflects real-world cloud automation practices used to maintain cost awareness, monitor resource creation, and improve overall infrastructure management.

⚙️ How It Works: 

A Bash script interacts with AWS services using AWS CLI.
The script fetches details about active AWS resources.
A cron job schedules the script to run daily.
Output is stored in a log file for monitoring and auditing.
This removes the need for manual AWS Console checks and ensures consistent reporting.

🛠 Technologies Used: 

Linux
Bash Scripting
AWS CLI
Cron Scheduler
JSON Parsing
