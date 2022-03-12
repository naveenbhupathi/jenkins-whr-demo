pipeline {
    stages {
        stage('Build') {
        withCredentials([string(credentialsId: 'dockerpwdid', variable: 'dockerpwd')]) {
            sh "docker login -u nvnbhupathi -p ${dockerpwd}"
        }
        sh 'docker build -t nvnbhupathi/nginx_test .'
            steps {
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
