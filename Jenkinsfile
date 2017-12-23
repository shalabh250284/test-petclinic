pipeline {
    agent { label 'maven' } 
    stages {
        stage('Example Build') {
            steps {
		sh 'mvn -B clean install'
		sh 'ls -ltr'
            }
        }
    }
}