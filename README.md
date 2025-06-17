# 🚀 Terraform ECS Microservice Infrastructure

Professional and modular provisioning of a full AWS infrastructure to run **three independent containers**, using **Terraform**, **Docker**, and **Fargate only**. This setup is focused on **low cost**, **maintainability**, and **production readiness**.

---

## 📦 Project Structure & Highlights

### 🧠 1. Core Logic (main.tf)
- [x] Clean and well-documented entry point with English technical comments
- [x] Loads all availability zones dynamically for resilience
- [x] Clear modular file separation and structure description
- [x] Ideal for onboarding and quick understanding of the setup

---

### 🌐 2. Network Layer (vpc.tf)
- [x] Custom VPC creation
- [x] Public and private subnets across multiple AZs
- [x] Routing tables and NAT gateway properly configured
- [x] High availability and security-first layout

---

### 📡 3. ECS Cluster (cluster.tf)
- [x] Fargate-powered ECS cluster
- [x] Designed for horizontal scaling and service separation
- [x] Fully managed and stateless setup

---

### 🔐 4. Security & IAM (security.tf, roles.tf)
- [x] Dedicated security groups per resource (ECS, ALB, DB, etc.)
- [x] Fine-grained IAM roles for ECS task execution
- [x] Ready for secure integration with AWS Systems Manager (SSM)

---

### 🐳 5. Containers & Tasks (task_definitions.tf)
- [x] Modular task definitions for three independent Docker apps
- [x] Easily extendable for multi-env or additional services
- [x] Prepared for ECR integration or local Docker image references

---

### ⚙️ 6. Services & Load Balancing (service.tf)
- [x] ECS services wired to an ALB for traffic management
- [x] Health checks, scaling, and failure recovery enabled
- [x] Ready for zero-downtime deployments (blue/green supported)

---

### 📤 7. Outputs & Customization
- [x] Export key resources (DNS, subnets, cluster name, etc.)
- [x] Variable declaration organized and environment-agnostic
- [x] Compatible with workspaces and multi-stage pipelines

---

## 🎯 Purpose

> Build a **fully managed AWS environment** capable of running **three Dockerized microservices** with zero manual steps, focusing on scalability, cost optimization, and a clean IaC approach.

---

## 🧰 Technologies Used

- **Terraform** (Infrastructure as Code)
- **AWS ECS Fargate**
- **Docker**
- **ALB, IAM, VPC, SSM, SG**
- **Git & GitHub Flow**

---

## 📌 Project Status

✔️ Infrastructure ready and deployed  
⚙️ Docker images in build phase  
📦 Next step: Deploy and test 3 isolated services  

---

## 🤝 Contributions

This project was designed to demonstrate practical skills in IaC and DevOps principles. Feedback and improvements are welcome!
