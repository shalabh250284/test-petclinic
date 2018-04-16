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
			agent { label 'master' }
			steps {
				unstash 'jar-file'
				script {
					//sh 'docker build shalabh250284/spring-petclinic:1.0.1 .'
					def image = docker.build('shalabh250284/spring-petclinic:1.0.1')
					image.push()
				}
            }
        }
    }
}
