pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'sudo npm install'
                sh 'sudo npm run build'
            }
        }
    }
}
