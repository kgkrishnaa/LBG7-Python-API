pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                docker-compose down
                docker-compose build
                                 '''
            }
        }
        stage('push') {
            steps {
                sh ''' 
                docker push  gcr.io/lbg-python-cohort-8/gopal-python-api:latest
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''kubectl  apply -f ./kubernetes/.
                ''' 
            }
        }
    }
}