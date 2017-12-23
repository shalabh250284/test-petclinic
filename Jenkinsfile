pipeline {
    agent { label 'maven' }
    options { 
	buildDiscarder(logRotator(numToKeepStr: '10')) 
	disableConcurrentBuilds()
	timeout(time: 1, unit: 'HOURS')
	
    } 
    stages {
        stage('Build and Unit Tests') {
            steps {
		sh 'mvn -B clean install'
		sh 'ls -ltr'
            }
        }
    }
}