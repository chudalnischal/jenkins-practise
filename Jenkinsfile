//his is th jenkins file for my new pipeline demo 
// i am learning the jenkins by writing declarative pipeline instead of scripted pipeline

pipeline {
    agent  { label 'jenkins'}

    environment{
        DOCKER_IMAGE = "python:latest"
        DOCKER_REGISTRY = "https://hub.docker.com/"
        DOCKER_PUSHING_REGISTRY = "nishal/nishal-dockerhub"
        DOCKER_CREDENTIALS_ID = "nischal/nischaldockerhub1"
    }

    stages {

        stage('Stating Git hUb access') {
            steps {
                echo "this is the step where i have set up git hub "             
                git branch: 'main', url : 'https://github.com/nis7al/jenkins-practise.git'
            }
        }

        stage ("logging in the hub"){
            steps {
                echo " i will login in the docker hub to pull the image "
                script{
                    docker.withRegistry("https://${DOCKER_PUSHING_REGISTRY}", "${DOCKER_CREDENTIALS_ID}") {
                        echo 'Logged in to Docker registry'
                }

            }

        }

        stage(" Docker Image ") {
            steps {
                echo " this is the stage where i will be pulling the docker image  "
                docker_image  = docker.build("${DOCKER_IMAGE}", ".")
            }
        }
        stage('Running python file in the docker image ') {
            steps {
                echo " this is th step where i will be running the python script in the container"
                script {
                    // using the previous buildimage 
                    docker_image.inside {
                        sh 'python main.py'

                    }

                }
        
        }
        }
        stage(" Docker Image Push  ") {
            steps {
                echo " this is the stage where i will be pushing  the docker image  "
                docker.withRegistry("https://${DOCKER_REGISTRY}", "${DOCKER_CREDENTIALS_ID}") 
                docker.push()
            }
        }
        
            
    }
}
