pipeline {
    agent any

    stages {

        stage('Build C Program') {
            steps {
                sh 'gcc main.c -o app'
            }
        }

        stage('Run Binary') {
            steps {
                sh './app'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t c-demo-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm c-demo-app'
            }
        }
    }
}
