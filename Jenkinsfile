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
                script {
                    containerId = sh(returnStdout: true, script: 'docker ps -q').trim()
                }
                sh "docker cp my_nginx.conf ${containerId}:/etc/nginx/conf.d/"
            }
        }
        stage('Open website') {
            steps {
                sh 'curl http://localhost'
            }
        }
    }
}
