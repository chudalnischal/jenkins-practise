# Docker Python Web Image Build with Jenkins

This project automates the process of building and deploying a Python-based web application in a Docker container using Jenkins. The Jenkins pipeline fetches the source code, builds a Docker image, and deploys the application in a container.

## Overview

In this project, we demonstrate the following steps:
- Fetch Python web application code from a GitHub repository.
- Build a Docker image for the application.
- Push the Docker image to a Docker registry (e.g., DockerHub).
- Deploy the Docker container running the web application.

## Prerequisites

Before running this project, ensure the following are installed:
- **Jenkins**: Set up a Jenkins server with the required plugins (e.g., Docker and Git plugins).
- **Docker**: Make sure Docker is installed and running on the machine where Jenkins is installed.
- **Git**: The source code for the web application is stored in a GitHub repository.

## Pipeline Overview

### Step 1: Fetch Code from GitHub
The pipeline starts by fetching the web application code from the specified GitHub repository. Ensure your Jenkins job is connected to your GitHub repository using appropriate credentials.

### Step 2: Build the Docker Image
Once the code is fetched, Jenkins builds a Docker image using the `Dockerfile` located in the project directory. The `Dockerfile` includes instructions for creating the image.

### Step 3: Push Docker Image to DockerHub
After successfully building the Docker image, Jenkins will push it to a DockerHub repository. For this step, ensure you configure Jenkins to authenticate with DockerHub using your credentials.
