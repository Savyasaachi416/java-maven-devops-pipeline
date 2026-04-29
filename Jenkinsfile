pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Savyasaachi416/java-maven-devops-pipeline.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t java-webapp .'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                docker rm -f java-webapp || true
                docker run -d -p 9091:8080 --name java-webapp java-webapp
                '''
            }
        }
    }
}
