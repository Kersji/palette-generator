pipeline {
    agent any
    environment {
        hostname = "${HOSTNAME}"
    }
    stages {
        stage('Install Dependencies') {
            steps {
               sh "bash scripts/installstage.sh"

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