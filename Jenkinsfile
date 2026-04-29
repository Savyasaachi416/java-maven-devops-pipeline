pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Savyasaachi416/java-maven-devops-pipeline.git'
            }
        }

        stage('Build Maven') {
            steps {
                sh '''
                docker run --rm \
                -v $PWD:/app \
                -w /app \
                maven:3.9.6-eclipse-temurin-17 \
                mvn clean package
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t java-webapp .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker rm -f java-webapp || true
                docker run -d -p 9091:8080 --name java-webapp java-webapp
                '''
            }
        }
    }
}
