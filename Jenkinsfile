pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                docker-compose down
                docker-compose up -d                 '''
            }
        }
        stage('push') {
            steps {
                echo "No push here "
            }
        }
        stage('Deploy') {
            steps {
                sh ''' docker run -d -p 8080:8080 --name gopal-py-rest-api-run-instance gopal-py-rest-api 
                ''' 
            }
        }
    }
}