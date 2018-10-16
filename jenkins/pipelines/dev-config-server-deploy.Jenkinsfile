pipeline {
    agent any

    stages {
        stage('Apply yamls') {
            steps {
                sh """
                    ls -l
                    cd ../../config-server &&
                    kubectl apply --force -f dev-config-server-deployment.yml,dev-config-server-service.yml
                """
            }
        }
    }

//    post {
//        always {
//            sendNotifications(currentBuild.result)
//        }
//    }
}
