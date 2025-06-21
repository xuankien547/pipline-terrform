pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('SECRECT_KEY')
    }

    options {
        timeout(time: 10, unit: 'MINUTES')
    }

    stages {
        stage('Check AWS Credentials') {
            steps {
                script {
                    echo '🔍 Kiểm tra quyền truy cập AWS...'
                    def status = sh(script: 'aws sts get-caller-identity', returnStatus: true)
                    if (status != 0) {
                        error('❌ AWS credentials sai hoặc không đủ quyền!')
                    } else {
                        echo '✅ AWS credentials hợp lệ.'
                    }
                }
            }
        }

        stage('List S3 Buckets') {
            steps {
                sh 'aws s3 ls'
            }
        }
    }
}
