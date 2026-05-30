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
                // Cleaned up: No sudo!
                sh 'docker build -t my-web-app .'
            }
        }
        stage('Step 3: Run the Website') {
            steps {
                echo 'Turning on our website...'
                // Cleaned up: No sudo!
                sh 'docker stop my-running-app || true'
                sh 'docker rm my-running-app || true'
                sh 'docker run -d -p 3000:3000 --name my-running-app my-web-app'
            }
        }
    }
}
