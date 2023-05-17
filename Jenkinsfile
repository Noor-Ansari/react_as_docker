pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                    echo 'Building..'
                    script {
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
