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
                echo "No push here "
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