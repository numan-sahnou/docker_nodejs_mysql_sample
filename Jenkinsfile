pipeline {
    agent any

    stages {
        stage('Docker Build') {
            steps{
            	echo 'test docker up'
            	bat 'docker-compose up --build -d'
            }
        }
    }
}