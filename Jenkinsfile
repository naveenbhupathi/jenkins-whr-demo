pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                withCredentials([string(credentialsId: 'dockerpwdid', variable: 'dockerpwd')]) {
                    sh "docker login -u nvnbhupathi -p ${dockerpwd}"
                }
                sh 'docker build -t nvnbhupathi/nginx_test .'
                echo 'Building..'
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
