pipeline {
    agent any

    stages {

        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'YOUR_GITHUB_REPO_URL'
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t java-webapp:v2 .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh 'docker rm -f javaapp-ci || true'
                sh 'docker run -d --name javaapp-ci -p 8090:8080 java-webapp:v2'
            }
        }

    }
}
