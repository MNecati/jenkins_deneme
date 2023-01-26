pipeline {
    agent {
        docker {
            image 'nginx:latest'
        }
    }
    stages {
        stage('Start web server') {
            steps {
                sh 'nginx'
            }
        }
        stage('Configure web server') {
            steps {
                sh 'docker cp my_nginx.conf 363c23:/etc/nginx/conf.d/'
            }
        }
        stage('Open website') {
            steps {
                sh 'curl http://localhost'
            }
        }
    }
}
