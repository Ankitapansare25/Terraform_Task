# 📌 Task: Terrraform task

# 📌 Terraform Task: Multi-EC2 Setup with S3 Versioning

## 📖 Task Overview

This Terraform task provisions multiple AWS resources including:

- 3 EC2 instances (Jump Server, App Server, DB Server)
- Security Group with SSH, HTTP, HTTPS access
- S3 Bucket with Versioning enabled

The objective of this task is to practice Infrastructure as Code (IaC) using Terraform.

---

## 🎯 Objective

- Launch multiple EC2 instances using Terraform
- Configure a shared Security Group
- Create an S3 bucket
- Enable S3 bucket versioning
- Understand resource dependencies and tagging

---

## 🛠️ Resources Created

### 🖥️ EC2 Instances
- Jump Server
- Application Server
- Database Server

### 🔐 Security Group
- SSH (Port 22)
- HTTP (Port 80)
- HTTPS (Port 443)
- All outbound traffic allowed

### 🗂️ S3 Bucket
- Custom bucket name
- Versioning enabled

---

## ⚙️ Terraform Commands Used

```
terraform init
terraform plan
terraform apply
terraform destroy
```

---

## 📂 Files Included

- main.tf
- variables.tf

---

## 🧠 Learning Outcome

- Hands-on experience with multiple EC2 provisioning
- Security Group configuration
- S3 bucket creation and versioning
- Infrastructure as Code best practices

---

## 👩‍💻 Author

Ankita Pansare  
