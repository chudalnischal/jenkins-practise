// this is th jenkins file for my new pipeline demo 
// i am learning the jenkins by writing declarative pipeline instead of scripted pipeline

pipeline {
    agent any 
    environment {
        GIT_REPO = "https://github.com/nis7al/jenkins-practise.git"
        GIT_BRANCH = "main"
        PYTHON_VERSION = 'python'
    }

    stages {
        stage('checkout') {
            steps {
                echo "this is the python compiler file"
               
                git branch: 'main', url : 'https://github.com/nis7al/jenkins-practise.git'
            }
        }

        stage(" dependendies install") {
            steps {
                echo " this is the dependiencies install stage "
                script{
                if (fileExists('requirements.txt')){
                    echo "this is the script "
                    bat " ${PYTHON_VERSION} -m  pip install -r requirements.txt "
                }
             }
            }
        }
        stage('running the file') {
            steps {
                echo " this is th step of running th file for compiling"
                bat "${PYTHON_VERSION} main.py"
        }
        }
        
            
    }
}
