pipeline {
    agent { label 'jenkins' }

    environment {
        DOCKER_REGISTRY = "https://index.docker.io/v1/"
        DOCKER_PUSH = "nischalchudal/jenkinspipeline"
        DOCKER_CREDENTIALS = "nischal-dockerhub" // Correct the credential ID here
        DOCKER_IMAGE_NAME = "nischalchudal/ubuntu-webinstall:1.2"
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out the repository"
                // Add git checkout step
                git 'https://github.com/nis7al/jenkins-practise.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo "Building Docker image"
                    // Build Docker image using the Dockerfile in the repository root or specified path
                    docker.build("${DOCKER_IMAGE_NAME}", ".")
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    echo "Pushing Docker image to Docker Hub"
                    // Login to Docker Hub and push the image
                    docker.withRegistry(DOCKER_REGISTRY, DOCKER_CREDENTIALS) {
                        docker.image("${DOCKER_IMAGE_NAME}").push()
                    }
                }
            }
        }
    }
}
