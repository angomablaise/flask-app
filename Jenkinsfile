pipeline {
    agent any

  environment {
      appName = 'flask'
      imageTag = "blaise/${appName}:${env.BRANCH_NAME}.${env.BUILD_NUMBER}"
  }
    stages {
        stage('Build') {
            steps {
                sh("docker build -t ${imageTag} .")
                sh("docker run -d --name=staging_flask -p 5001:5000 ${imageTag}")

            }
        }

    }
}
