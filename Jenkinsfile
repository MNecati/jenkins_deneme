pipeline {
    agent any
    stages {
        stage("Checkout") {
            steps {
                git branch: 'main', url: 'https://github.com/MNecati/jenkins_deneme.git'
            }
        }
        stage("Build") {
            steps {
                sh 'docker build -t myregistry.com/hello_there:${env.BUILD_ID} .'
            }
        }
        stage("Test") {
            steps {
                sh 'docker run --rm myregistry.com/hello_there:${env.BUILD_ID} pytest'
            }
        }
        stage("Push") {
            steps {
                sh 'docker push myregistry.com/hello_there:${env.BUILD_ID}'
            }
        }
        stage("Deploy") {
            steps {
                sh 'kubectl set image deployment/hello_there hello_there=myregistry.com/hello_there:${env.BUILD_ID}'
            }
        }
    }
}
