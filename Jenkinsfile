pipeline {
    agent any
    stages {
        stage("Build") {
            steps {
                sh """
                  docker build -t hello_there .
                """
            }
        }
        stage("Run") {
            steps {
                sh """
                  docker run --rm hello_there
                """
            }
        }
    }
}
