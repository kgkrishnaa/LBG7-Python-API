pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                docker-compose down
                                 '''
            }
        }
        stage('push') {
            steps {
                docker-compose build 
            }
        }
        stage('Deploy') {
            steps {
                sh '''docker-compose up -d 
                ''' 
            }
        }
    }
}