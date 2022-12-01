pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                 docker stop gopal-py-rest-api-run-instance
                 docker build -t gopal-py-rest-api
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
                sh ''' docker run -d -p 8080:8080 --name gopal-py-rest-api-run-instance gopal-py-rest-api 
                ''' 
            }
        }
    }
}