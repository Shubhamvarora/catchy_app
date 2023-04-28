pipeline {

    agent any

    
    stages {

        stage("Git Checkout"){
            steps {
                git branch: 'main', url: 'https://github.com/Shubhamvarora/catchy_app.git'
            }
        }

        stage("Unit Testing"){
            steps {
                sh 'mvn test'
            }
        }

        stage("Integration Testing"){
            steps {
                sh 'mvn verify -DskipUnitTests'
            }
        }

        stage("Build"){
            steps {
                sh 'mvn clean install'
            }
        }
        
        

        
          stage('SonarQube analysis') {
//    def scannerHome = tool 'SonarScanner 4.0';
        steps{
        withSonarQubeEnv('sonarqube') { 
        // If you have configured more than one global server connection, you can specify its name
//      sh "${scannerHome}/bin/sonar-scanner"
            mvn clean verify sonar:sonar \
                -Dsonar.projectKey=project \
                -Dsonar.projectName='project' \
                -Dsonar.host.url=http://3.76.133.158:9000 \
                -Dsonar.token=token12
        sh "mvn sonar:sonar"
    }
        }
    
          }
