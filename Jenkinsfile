pipeline {
    agent { label 'maven' } 
    stages {
        stage('Example Build') {
            steps {
                checkout scm
                sh 'ls -ltr'
                sh 'mvn -B clean verify'
            }
        }
    }
}