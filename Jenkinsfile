pipeline {
    agent any
    environment {
        DOCKER_REGISTRY = "myregistry.com"
    }
    stages {
        stage("Checkout") {
            steps {
                git url: 'https://github.com/MNecati/jenkins_deneme.git'
            }
        }
        stage("Build") {
            steps {
                sh """
                  docker build --pull -t ${DOCKER_REGISTRY}/hello_there:${env.BUILD_ID} .
                """
            }
        }
        stage("Test") {
            steps {
                sh """
                  docker run --rm ${DOCKER_REGISTRY}/hello_there:${env.BUILD_ID} pytest
                """
            }
        }
        stage("Push") {
            steps {
                sh """
                  docker push ${DOCKER_REGISTRY}/hello_there:${env.BUILD_ID}
                """
            }
        }
        stage("Deploy") {
            steps {
                sh """
                  kubectl set image deployment/hello_there hello_there=${DOCKER_REGISTRY}/hello_there:${env.BUILD_ID}
                """
            }
        }
    }
}
