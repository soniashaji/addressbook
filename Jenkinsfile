pipeline {
    agent any
    tools {
        maven 'maven-3.6.3'
    }
    stages {
        stage("build jar") {
            steps {
                script {
                    echo "Building The Application"
                    sh 'mvn clean package'
                    
                }
            }
        }
    
        stage("build image") {
            steps {
                script {
                    echo "Building The Image"
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-repo', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
                        sh 'docker build -t sonia0103/my_repo:adbookapp-1.0 .'
                        sh "echo $PASSWORD | docker login -u $USERNAME --password-stdin"
                        sh ' docker push sonia0103/my_repo:adbookapp-1.0'
                    
                }
            }
        }
        }
        stage("Deploy") {
            steps {
                script {
                    echo "Deploying The Application"
                    
                }
            }
        }
    
     }
    post {

        always{
         
            junit 'target/surefire-reports/**/*.xml'
          
            }
        } 
   
}


    
