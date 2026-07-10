# AWS 2-Tier Architecture using Terraform, Jenkins, GitHub and AWS

## Project Overview

This project demonstrates the provisioning and automation of a highly available AWS 2-Tier Architecture using Terraform and Jenkins.

The infrastructure is deployed using Infrastructure as Code (IaC) principles with Terraform, while Jenkins is used to automate infrastructure validation and deployment through a CI/CD pipeline.

---

## Architecture Diagram

```text
GitHub
   |
   | Push Code
   |
Jenkins Pipeline
   |
Terraform
   |
------------------------------------------------
VPC (10.0.0.0/16)
|
|-- Public Subnet 1 (10.0.1.0/24)
|       |
|       EC2 Web Server 1
|       13.62.52.80
|
|-- Public Subnet 2 (10.0.2.0/24)
|       |
|       EC2 Web Server 2
|       16.192.77.147
|
|-- Private Subnet 1 (10.0.3.0/24)
|
|-- Private Subnet 2 (10.0.4.0/24)
|
|-- Amazon RDS MySQL
|       terraform-mysql.cncmmge60anu.eu-north-1.rds.amazonaws.com
|
|-- S3 Backend
|
|-- DynamoDB State Locking
```

---

## Technology Stack

### Cloud Platform
- AWS

### Infrastructure as Code
- Terraform

### CI/CD
- Jenkins

### Version Control
- Git
- GitHub

### AWS Services Used
- VPC
- EC2
- RDS MySQL
- S3
- DynamoDB
- IAM
- Route Tables
- Internet Gateway
- Security Groups

---

## Project Components

### Networking

#### VPC

```text
10.0.0.0/16
```

#### Public Subnets

```text
10.0.1.0/24
10.0.2.0/24
```

#### Private Subnets

```text
10.0.3.0/24
10.0.4.0/24
```

#### Internet Access

- Internet Gateway
- Public Route Table
- Route Table Associations

---

## Security

### Web Security Group

Allowed Ports:

```text
22  - SSH
80  - HTTP
```

Source:

```text
0.0.0.0/0
```

### Database Security Group

Allowed Port:

```text
3306 - MySQL
```

Source:

```text
Web Security Group
```

---

## Compute Layer

### Web Server 1

```text
Name: terraform-web-server
IP: 13.62.52.80
```

### Web Server 2

```text
Name: terraform-web-server-2
IP: 16.192.77.147
```

### Web Server URLs

```text
http://13.62.52.80
```

```text
http://16.192.77.147
```

---

## Database Layer

### Amazon RDS MySQL

```text
Engine: MySQL
Instance Type: db.t3.micro
```

### Endpoint

```text
terraform-mysql.cncmmge60anu.eu-north-1.rds.amazonaws.com:3306
```

### Deployment

- Private Subnet 1
- Private Subnet 2
- Not publicly accessible

---

## Terraform Backend

### Remote State Storage

Amazon S3 Bucket used for:

```text
Terraform State File Storage
```

### State Locking

Amazon DynamoDB used for:

```text
Terraform State Locking
```

Table Name:

```text
terraform-lock
```

---

## Jenkins CI/CD Pipeline

Pipeline Stages:

1. Checkout
2. Terraform Init
3. Terraform Validate
4. Terraform Plan
5. Approval
6. Terraform Apply

### SCM Polling

Jenkins is configured with SCM Polling:

```text
* * * * *
```

This checks GitHub every minute for changes and automatically triggers a pipeline run.

---

## Terraform Outputs

```text
web_server_1_ip = 13.62.52.80
web_server_2_ip = 16.192.77.147
rds_endpoint = terraform-mysql.cncmmge60anu.eu-north-1.rds.amazonaws.com:3306
```

---

## Repository Structure

```text
terraform-2tier-project

│
├── backend.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── main.tf
├── Jenkinsfile
├── README.md
├── .gitignore
│
└── .terraform.lock.hcl
```

---

## Key Features

✅ Infrastructure as Code using Terraform

✅ Remote Terraform State using Amazon S3

✅ State Locking using DynamoDB

✅ Jenkins CI/CD Automation

✅ GitHub Integration

✅ 2-Tier AWS Architecture

✅ Two EC2 Web Servers

✅ Amazon RDS MySQL

✅ Public and Private Subnets

✅ Security Groups

✅ Route Tables and Internet Gateway

---

## Outcome

Successfully designed, provisioned and automated a highly available AWS 2-Tier Architecture using Terraform, Jenkins and GitHub.

This project demonstrates Infrastructure as Code (IaC), CI/CD automation, cloud networking, compute provisioning, database deployment and remote state management in AWS.