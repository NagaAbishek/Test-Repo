pipeline{
    agent any
    /*environment {
        AWS_ACCOUNT_ID="YOUR_ACCOUNT_ID_HERE"
        AWS_DEFAULT_REGION="CREATED_AWS_ECR_CONTAINER_REPO_REGION" 
        IMAGE_REPO_NAME="ECR_REPO_NAME"
        IMAGE_TAG="latest"
        REPOSITORY_URI = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"

    } */
    stages {
        stage ( git clone ) {
        steps {
            git branch: 'main', url: 'https://github.com/NagaAbishek/Test-Repo.git'
            }
        }
        //stage ( Login into aws ECR )
    } 
 }