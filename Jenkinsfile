pipeline {
    agent any

    environment {
        STUDENT_NAME    = 'Aidos'
        STUDENT_SURNAME = 'Toleukhan'
        STUDENT_GROUP   = 'IT2-2309'
        STUDENT_ID      = '37599'
        IMAGE_NAME      = 'toleukhan-aidos-devops'
        CONTAINER_NAME  = 'toleukhan-aidos-container'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'git log -1 --oneline'
            }
        }

        stage('Build') {
            steps {
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
                sh 'chmod +x app/app.sh scripts/Toleukhan_Aidos_system.sh'
            }
        }

        stage('Test') {
            steps {
                sh 'test -f Toleukhan_Aidos_info.txt'
                sh 'test -f Dockerfile'
                sh 'bash -n app/app.sh'
                sh 'bash -n scripts/Toleukhan_Aidos_system.sh'
                echo 'All checks passed'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t ${IMAGE_NAME} .'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker rm -f ${CONTAINER_NAME} || true'
                sh '''docker run --name ${CONTAINER_NAME} \
                    -e STUDENT_NAME=${STUDENT_NAME} \
                    -e STUDENT_SURNAME=${STUDENT_SURNAME} \
                    -e STUDENT_GROUP=${STUDENT_GROUP} \
                    -e STUDENT_ID=${STUDENT_ID} \
                    ${IMAGE_NAME}'''
            }
        }
    }

    post {
        success {
            echo 'Pipeline finished successfully'
        }
        failure {
            echo 'Pipeline failed'
        }
    }
}
