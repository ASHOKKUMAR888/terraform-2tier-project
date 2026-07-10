pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/ASHOKKUMAR888/terraform-2tier-project.git'
            }
        }

        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                bat 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'terraform plan'
            }
        }
    }
}