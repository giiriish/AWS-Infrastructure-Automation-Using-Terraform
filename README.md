
Problem Statement: AWS Infrastructure Automation Using Terraform


This project focuses on building a fully automated Terraform configuration to deploy a that includes VPC networking, ECS for application hosting, ALB for traffic distribution, RDS for persistent data storage, and secure access via IAM roles and security groups. The infrastructure must support .


🚀 Infrastructure Components


1. Virtual Private Cloud (VPC)


<img width="1551" height="228" alt="Screenshot 2025-11-17 145847" src="https://github.com/user-attachments/assets/d41c1204-7cc8-42fa-b557-ce76494fac0e" />


2. Subnets


<img width="1562" height="368" alt="Screenshot 2025-11-17 150053" src="https://github.com/user-attachments/assets/f251ee07-a9ca-4d6a-a143-4dc0e4b9eef5" />


3. Route Tables


<img width="1574" height="243" alt="Screenshot 2025-11-17 150111" src="https://github.com/user-attachments/assets/a714db6b-9ae2-4346-8a81-a369364191a1" />


4. Security Groups


<img width="1582" height="238" alt="Screenshot 2025-11-17 150322" src="https://github.com/user-attachments/assets/4c4c8a7c-507b-401d-afd8-d708d46d8796" />



5. Internet gateways

<img width="1587" height="234" alt="Screenshot 2025-11-17 150144" src="https://github.com/user-attachments/assets/950d2df0-b251-441f-a378-b15220c2d92d" />


Deployment Steps

Step 1: Initialize Terraform

terraform init

Step 2: Validate Configuration

terraform validate

Step 3: Plan Infrastructure

terraform plan

Step 4: Apply Configuration

terraform apply -auto-approve

<img width="936" height="152" alt="Screenshot 2025-11-17 150551" src="https://github.com/user-attachments/assets/6d80abc1-279e-4212-baf5-356ac97a475c" />


Access the Application

open browser : - http://<alb_dns_name>

<img width="1011" height="396" alt="Screenshot 2025-11-17 145745" src="https://github.com/user-attachments/assets/ee112697-47d5-4ca5-813f-a93e3ebacedb" />
