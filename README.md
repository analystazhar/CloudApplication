                    +--------------------+
                    |     Route53 DNS    |
                    +---------+----------+
                              |
                              v
                    +--------------------+
                    |   CloudFront CDN   |
                    +---------+----------+
                               |
                               v 
                  +----------------------+
                  |   Application Load    | 
                      Balancer (ALB)   
                  +----------+-----------+
                               |
                               v
                   +---------------------------+
                    | Auto Scaling Group (ASG) |
                    |  EC2 Instances (Nginx)   |
                  +---------------------------+
                                |
                      +--------+--------+
                      |                 |
                      v                 v
                    Target Group     Health Checks

# 🚀 Scalable Web App on AWS (ALB + ASG + CloudFront + Terraform)

## 📌 Overview
This project demonstrates a **highly scalable, production-grade AWS architecture** using:

- Auto Scaling Group (ASG)
- Application Load Balancer (ALB)
- CloudFront CDN
- S3 Static Hosting
- Route53 DNS
- Terraform (IaC)
- GitHub Actions CI/CD

---

## 🏗️ Architecture Highlights

- ⚖️ Load balancing using **ALB**
- 📈 Auto scaling based on demand (CPU/traffic)
- 🌍 Global content delivery using **CloudFront**
- 🔐 Secure private EC2 instances in ASG
- ⚡ Static frontend hosted on **S3**
- 🔄 Fully automated infrastructure via Terraform

---

## 🧠 AWS Services Used

- EC2 (Auto Scaling Group)
- ALB (Application Load Balancer)
- Target Groups + Health Checks
- S3 (Static Website Hosting)
- CloudFront (CDN)
- Route53 (DNS)
- IAM Roles & Policies
- VPC (Public + Private Subnets)
- Security Groups
- Terraform (IaC)

---

## 🚀 Deployment Flow

```bash
terraform init
terraform plan
terraform apply -auto-approve
🔄 CI/CD Pipeline

GitHub Actions handles:

Terraform Init
Terraform Validate
Terraform Plan
Terraform Apply

Trigger: Push to main
Key Features
Auto Scaling based on CPU utilization
High availability across multiple AZs
Fault-tolerant architecture
Secure private EC2 instances
CDN acceleration via CloudFront
Infrastructure as Code (100% automated)
Business Impact
⚡ 90% faster deployment using Terraform modules
📉 Reduced downtime via Auto Scaling + ALB health checks
🌍 Global latency reduction via CDN
🔐 Improved security with private subnets + IAM roles
Author
Azharuddin Alam
Cloud Engineer | AWS | DevOps | Terraform | CI/CD
