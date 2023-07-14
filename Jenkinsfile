<<<<<<< HEAD
pipeline {

    agent any
    
    environment {
        PASS = credentials('registry-pass') 
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh

                '''
            }

=======
pipeline{
    agent any
    
	environment{
		   PASS=credentials('Docker-Registory-Pass')
		}	
    stages{
        stage('Build'){
            steps {
                sh'''
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh
                    '''
            }
>>>>>>> parent of 5b59978 (Update Jenkinsfile with proper indentation)
            post {
                success {
                   archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
                }
<<<<<<< HEAD
            }
        }

        stage('Test') {
            steps {
                sh './jenkins/test/mvn.sh mvn test'
            }

            post {
                always {
                    junit 'java-app/target/surefire-reports/*.xml'
                }
            }
        }

        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}
=======
        }
        stage('Test'){
            steps {
                sh'''
                jenkins/test/./test.sh mvn test
                '''
            }
	post {
                always {
                    junit 'java-app/target/surefire-reports/*.xml'
                }
        }
        
        stage('Push'){
            steps {
                sh'''
                jenkins/push/push.sh
                '''
            }
        }

        stage('Deploy'){
            steps {
                sh'''
                 jenkins/deploy/deploy.sh
                '''
            }
        }
    }
} 
>>>>>>> parent of 5b59978 (Update Jenkinsfile with proper indentation)
