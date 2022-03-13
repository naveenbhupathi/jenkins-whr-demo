pipeline {
    agent any
    stages {
        stage('Build Docker image') {
            steps {
                echo 'Building..'
                withCredentials([string(credentialsId: 'dockerpwdid', variable: 'dockerpwd')]) {
                    bat "docker login -u nvnbhupathi -p ${dockerpwd}"
                }
                bat 'docker build -t nvnbhupathi/nginx_test .'
                echo 'CI/CD Demo $BUILD_NUMBER'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
