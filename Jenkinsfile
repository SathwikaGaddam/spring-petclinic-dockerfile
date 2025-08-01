pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/SathwikaGaddam/spring-petclinic-dockerfile.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }

        stage('Docker Build & Run') {
            steps {
                sh 'docker build -t devops-app .'
                sh 'docker run -d -p 8080:8080 devops-app'
            }
        }
    }
}
