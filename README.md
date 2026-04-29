# 🚀 Java DevOps CI/CD Pipeline Project

## 👨‍💻 Author
Savyasaachi

---

## 📌 Project Overview

This project demonstrates a complete **CI/CD DevOps pipeline** using:

- GitHub (Source Code Management)
- Jenkins (Automation Server)
- Maven (Build Tool)
- Docker (Containerization)
- AWS EC2 (Deployment)
- Kubernetes (Container Orchestration)
- Ansible (Automation)

---

## 🏗️ Architecture Flow

GitHub → Jenkins → Maven Build → Docker Image → Docker Container → Kubernetes Deployment → AWS EC2

---

## ⚙️ Tools & Technologies

- Java
- Maven
- Jenkins
- Docker
- Kubernetes
- Ansible
- Git & GitHub
- AWS EC2
- Linux

---

## 🔄 CI/CD Pipeline Stages

### 1. Code Checkout
Pull source code from GitHub repository.

### 2. Build Stage
Compile and package Java application using Maven.

### 3. Docker Build
Create Docker image for application.

### 4. Deploy Stage
Run Docker container on EC2 instance.

### 5. Kubernetes Deployment
Deploy application using Kubernetes Deployment and Service manifests.

### 6. Ansible Automation
Automate deployment using Ansible playbook.

---

## ☸️ Kubernetes Deployment

This project includes Kubernetes manifests for container orchestration and scalable deployment.

### 📁 Kubernetes Files

```text
kubernetes/
├── deployment.yaml
└── service.yaml


---

## 📦 Build Artifact

Generated WAR file is available here:

artifacts/java-webapp.war
