pipeline {
    agent any 

    stages {
        stage('Step 1: Pull Code') {
            steps {
                echo 'Pulling our code files...'
            }
        }
        stage('Step 2: Package with Docker') {
            steps {
                echo 'Building our Docker container box...'
                sh 'sudo docker build -t my-web-app .'
            }
        }
        stage('Step 3: Run the Website') {
            steps {
                echo 'Turning on our website...'
                sh 'sudo docker stop my-running-app || true'
                sh 'sudo docker rm my-running-app || true'
                sh 'sudo docker run -d -p 3000:3000 --name my-running-app my-web-app'
            }
        }
    }
}
