pipeline {
    agent any

    stages {
        stage('Build') {
            agent {
                docker {
                    steps {
                        echo 'Building..'
                        script {
                            sh 'docker build .'   
                        }
                    }
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
