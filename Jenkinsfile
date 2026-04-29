pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Savyasaachi416/java-maven-devops-pipeline.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t java-webapp .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                sudo docker rm -f java-webapp || true
                sudo docker run -d -p 9091:8080 --name java-webapp java-webapp
                '''
            }
        }
    }
}
