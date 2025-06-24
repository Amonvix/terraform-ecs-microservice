# ✨ AWS Terraform ECS Microservices Suite

> _"Automate with precision. Deploy with elegance. Dream in YAML, execute in JSON, and document in Markdown."_
> — GG, DevOps Philosopher

---

## 🌐 Overview

This project provisions a **complete AWS infrastructure** to deploy **three isolated microservices** using **Docker, ECS Fargate, and Terraform only**.

No manual setup. No fragile hacks. Just pure Infrastructure as Code — scalable, reproducible, and production-ready.

---

## 🧱 Architecture Overview

**Terraform (IaC)** + **Dockerized Services** + **ECS Fargate**

┌────────────┐ ┌─────────────┐ ┌────────────────────┐
│ VPC + SG │──────▶│ ALB │──────▶│ 3 Microservices │
└────────────┘ └─────────────┘ └────────────────────┘
▲
Provisioned by Terraform

---

## 🔥 Live Services

| Service                   | Description                            | Public URL                                                 |
| ------------------------- | -------------------------------------- | ---------------------------------------------------------- |
| 🛳️ **Titanic Survival**   | ML model predicting passenger survival | [http://100.26.100.119:8001/](http://100.26.100.119:8001/) |
| ⚙️ **FastAPI CRUD**       | Python-based CRUD using FastAPI        | [http://100.26.100.119:8002/](http://100.26.100.119:8002/) |
| ☕ **Java CRUD (Spring)** | Java CRUD app with Spring Boot         | [http://100.26.100.119:8080/](http://100.26.100.119:8080/) |

---

## 📦 Infrastructure Modules

- `main.tf` → Clean entrypoint with technical documentation
- `vpc.tf` → Custom VPC, subnets, NAT, routing tables
- `cluster.tf` → ECS Fargate Cluster (scalable & stateless)
- `security.tf` & `roles.tf` → Fine-tuned IAM roles and Security Groups
- `task_definitions.tf` → Independent Dockerized service specs
- `service.tf` → ECS services behind ALB with health checks & autoscaling

---

## 🚀 Quick Start

```bash
terraform init
terraform apply
The entire infrastructure — VPC, ALB, ECS, and services — comes online with a single command.

🔧 Tech Stack
    Terraform (0.15+)

    Docker

    AWS ECS Fargate

    ALB, IAM, SSM, SG, VPC

    GitHub Flow

    ✅ Project Status

    ✅ AWS infrastructure fully provisioned

    ✅ All 3 containers running live

    ✅ URLs publicly available and tested

    🛠️ Ready for monitoring, logging, and CI/CD

    🤝 Contributions
This project is more than code. It’s a declaration of clean DevOps.
Feel free to fork, suggest improvements, or use it as inspiration for your own infrastructure journey.

“Infrastructure is not just architecture. It's intention made executable.”

📬 Contact
Built with passion by Daniel Pedroso
📧 Email: hspedroso@gmail.com
🌐 LinkedIn -> www.linkedin.com/in/daniel-alexandre-pedroso-49993934



