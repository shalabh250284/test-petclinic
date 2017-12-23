pipeline {
    agent { label 'maven' } 
    stages {
        stage('Example Build') {
            steps {
                sh 'ls -ltr'
                sh 'mvn -B clean verify'
            }
        }
    }
}