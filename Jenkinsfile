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
                // copy the configuration file to the container
                sh 'docker cp my_nginx.conf $(docker ps -q):/etc/nginx/conf.d/'
                // reload the configuration
                sh 'docker exec $(docker ps -q) nginx -s reload'
            }
        }
        stage('Open website') {
            steps {
                sh 'curl http://localhost'
            }
        }
    }
}
