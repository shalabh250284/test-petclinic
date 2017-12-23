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
		stash name: 'jar-file', includes: 'target/spring-petclinic-1.5.1.jar'
            }
        }
        stage('Build Docker Image') {
	agent { label 'docker' }
            steps {
		unstash 'jar-file'
		sh 'ls -ltr'

            }
        }
    }
}