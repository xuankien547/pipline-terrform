pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('SECRECT_KEY')
    }
    tools {
        aws 'aws-cli'
    }
    options {
        timeout(time: 10, unit: 'MINUTES')
    }
    stages {
        stage('List S3 Buckets') {
            steps {
                sh 'aws s3 ls'
            }
        }
    }
}