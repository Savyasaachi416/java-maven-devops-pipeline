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

---

## 🏗️ Architecture Flow

GitHub → Jenkins → Maven Build → Docker Image → Docker Container → EC2 Deployment

---

## ⚙️ Tools & Technologies

- Java
- Maven
- Jenkins
- Docker
- Git & GitHub
- AWS EC2

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

---

## 🌐 Application URL

http://13.203.65.163:9091

---

## 📦 How to Run Locally

```bash
git clone https://github.com/Savyasaachi416/java-maven-devops-pipeline.git
cd java-maven-devops-pipeline
mvn clean package
docker build -t java-webapp .
docker run -p 9091:8080 java-webapp
