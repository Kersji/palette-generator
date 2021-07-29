pipeline {
    agent any
    environment {
        HOSTNAME = "${BUILD_TAG}"
    }
    stages {
        stage('Install Dependencies') {
            steps {
               sh "bash scripts/installstage.sh"
               sh "echo ${HOSTNAME}" 
            }
        }
        stage('Testing') {
            steps {
                sh "bash scripts/teststage.sh"
            }
        }
        stage('Deployment') {
            steps {
                sh "bash scripts/deploy.sh"    
            }
        }
    }
    post {
        always {
            cobertura coberturaReportFile: 'coverage.xml', failNoReports: false
            junit 'junit.xml'
        }
    }
}