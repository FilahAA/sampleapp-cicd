pipeline {
    agent any //{
       // docker {
        //    image 'docker:23.0.1-cli-alpine3.17'
        //}
    //}
    stages {
        stage('Build and Push') {
            steps {
                checkout scm
                echo 'Building..'
                sh 'chmod +x docker-build-push.sh'
                sh './docker-build-push.sh'
            }
        }
        //stage('Deploy to Dev Environment') {
            //steps {
                //checkout scm
                //echo 'Deploying....'
                //sh 'ssh -i docker-server docker1:docker1.filahaditia.id'
                //sh '"sudo docker run -d --name sampleapp-2 -p 8080:80,8181:443 sampleapp-2:${BUILD_ID}"'
                //sh '"sudo docker image rm sampleapp-2:${BUILD_ID}"'
            //} 
        //}
    }
}
