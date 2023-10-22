pipeline{
    agent any
    environment {
        AWS_ACCOUNT_ID="043437012221"
        AWS_DEFAULT_REGION="ap-south-1" 
        IMAGE_REPO_NAME="jenkins-docker"
        IMAGE_TAG="latest"
        REPOSITORY_URI = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"
    } 
    stages {
        stage ( git clone ) {
            steps {
                git branch: 'main', url: 'https://github.com/NagaAbishek/Test-Repo.git'
            }
        }
        stage ( Login into aws ECR ) {
            steps {
                script {
                    sh "aws ecr get-login-password - region ${AWS_DEFAULT_REGION} | docker login - username AWS - password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com"
                }
            }
        }
        stage ( Build docker image ) {
            steps {
                script {
                    dockerImage = docker.build "${IMAGE_REPO_NAME}:${IMAGE_TAG}"
                }
            }
        }
        stage('Pushing to ECR') {
            steps{ 
                script {
                    sh "docker tag ${IMAGE_REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URI}:$IMAGE_TAG"
                     sh "docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}:${IMAGE_TAG}"
                }
            }
    } 
 }