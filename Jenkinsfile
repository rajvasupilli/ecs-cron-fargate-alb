pipeline {
    agent any 
    stages {
        stage('Install Pre-requisites') {
            steps {
                echo 'Installing the prerequisites!!!'
                sh '''
                      bash prereq.sh
                   '''
            }
        }
        stage('ECR') {
            steps {
                echo 'Build,Tag and Push the Docker Image into the ECR'
                sh ''' aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 004269788592.dkr.ecr.us-east-1.amazonaws.com
                       sudo docker build -t scala-image-repo .
                       sudo docker tag scala-image-repo:latest 004269788592.dkr.ecr.us-east-1.amazonaws.com/scala-image-repo:latest
                       sudo docker push 004269788592.dkr.ecr.us-east-1.amazonaws.com/scala-image-repo:latest    
                   '''
            }
        }
    }
}
