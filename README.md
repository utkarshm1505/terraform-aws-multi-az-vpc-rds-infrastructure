# Terraform AWS Multi-AZ VPC Infrastructure with EC2 and RDS

## Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to automate the deployment of a secure and scalable AWS cloud infrastructure.

The solution provisions a Multi-AZ Virtual Private Cloud (VPC) architecture with public and private subnets, Internet Gateway, route tables, security groups, an EC2 instance, and an Amazon RDS MySQL database. The architecture follows cloud security best practices by isolating the database layer within private subnets while allowing secure communication from the application server hosted on EC2.

---

## Architecture

### Infrastructure Components

### Networking
- Custom VPC (10.0.0.0/16)
- Public Subnet (10.0.1.0/24)
- Private Subnet 1 (10.0.2.0/24)
- Private Subnet 2 (10.0.3.0/24)
- Internet Gateway
- Route Table and Route Association

### Compute
- Amazon EC2 Instance
- SSH Key Pair Authentication

### Database
- Amazon RDS MySQL
- DB Subnet Group
- Multi-AZ Subnet Placement

### Security
- EC2 Security Group
- RDS Security Group
- Secure Database Access from EC2

---

## Key Features

- Infrastructure as Code (IaC) using Terraform
- Automated AWS Infrastructure Provisioning
- Multi-AZ Network Architecture
- Public and Private Subnet Deployment
- Internet Gateway and Route Table Configuration
- EC2 Instance Provisioning
- Amazon RDS MySQL Deployment
- Security Group-Based Access Control
- DB Subnet Group Configuration
- Terraform Output Management
- Scalable and Reproducible Infrastructure

---

## Project Structure

```text
terraform-aws-multi-az-vpc-rds-infrastructure
│
├── provider.tf
├── vpc.tf
├── security.tf
├── ec2.tf
├── rds.tf
├── variables.tf
├── outputs.tf
└── .gitignore
```

---

## Technologies Used

- Terraform
- Amazon Web Services (AWS)
- AWS VPC
- AWS EC2
- AWS RDS MySQL
- AWS Security Groups
- AWS Route Tables
- Infrastructure as Code (IaC)

---

## Infrastructure Workflow

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Generate Execution Plan

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

### Destroy Infrastructure

```bash
terraform destroy
```

---

## Resources Provisioned

### Networking Resources

- VPC
- Public Subnet
- Private Subnet 1
- Private Subnet 2
- Internet Gateway
- Route Table
- Route Table Association

### Security Resources

- EC2 Security Group
- RDS Security Group

### Compute Resources

- EC2 Instance
- AWS Key Pair

### Database Resources

- RDS MySQL Instance
- DB Subnet Group

---

## Outputs

Terraform generates the following outputs after successful deployment:

```text
EC2 Public IP Address
RDS Endpoint
```

These outputs can be used to connect to the EC2 instance and access the RDS database securely.

---

## Security Considerations

- Database deployed within private subnets
- RDS is not publicly accessible
- Access to MySQL is restricted through security groups
- SSH access managed using AWS Key Pair authentication
- Network isolation between application and database layers

---

## Future Enhancements

- Application Load Balancer (ALB)
- Auto Scaling Groups (ASG)
- CloudWatch Monitoring and Alerts
- Terraform Remote State Backend (S3 + DynamoDB)
- CI/CD Pipeline using GitHub Actions
- Multi-Region Disaster Recovery
- AWS Secrets Manager Integration

---

## Learning Outcomes

This project demonstrates practical knowledge of:

- Terraform Fundamentals
- Infrastructure as Code (IaC)
- AWS Networking
- Multi-AZ Architecture
- Cloud Security Best Practices
- EC2 and RDS Integration
- Infrastructure Automation

---

## Author

**Utkarsh Mahajan**

B.Tech Computer Science Engineering (Cloud Computing)

AWS | Terraform | Cloud Infrastructure | DevOps | Infrastructure as Code

GitHub: https://github.com/utkarshm1505

---

## License

This project is intended for educational and learning purposes.
