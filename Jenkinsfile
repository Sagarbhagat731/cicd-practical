pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Source code checked out'
            }
        }

        stage('Build') {
            steps {
                sh 'test -f app/index.html'
                echo 'Build completed'
            }
        }

        stage('Test') {
            steps {
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }

        stage('Package') {
            steps {
                sh 'tar -czf app.tar.gz app'
                echo 'Package created'
            }
        }
    }
}
