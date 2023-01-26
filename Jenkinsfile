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
        stage('Open website') {
            steps {
                sh 'curl http://localhost'
            }
        }
    }
}
