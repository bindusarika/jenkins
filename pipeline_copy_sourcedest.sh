pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the project'
            }
        }
        stage('Copy Files') {
            steps{
                script{
                    //Replace 'source_path' and 'destination_path' with your actual source and destination paths
                    def source_path = '/opt/maven.pkg/apache-maven-3.9.2/cloudbots'
                    def destination_path = '/opt/tomcat.pkg/apache-tomcat-9.0.75/webapps'
                    
                    //Execute the copy command
                    sh "cp -r ${source_path} ${destination_path}"
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Running test cases'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the project'
            }
        }
        
    }
    post {
        success {
            echo 'pipeline succeeded!'
        }
        failure {
            echo 'pipeline failed'
        }
    }
    
}
