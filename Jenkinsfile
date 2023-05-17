pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                docker {
                    echo 'Building..'
                    sh 'docker build .'
                }
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
