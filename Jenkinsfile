pipeline {
    agent any
    stages {
        stage('Build Docker image') {
            steps {
                echo 'Building..'
                bat 'docker login -u nvnbhupathi -p Bhupathi4041'
                bat 'docker build -t nvnbhupathi/nginx_test .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'docker --version'
                sh 'nginx -V'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
