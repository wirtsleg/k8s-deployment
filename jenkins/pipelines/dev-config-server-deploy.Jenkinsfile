pipeline {
    agent any

    stages {
        stage('Apply yamls') {
            steps {
                dir("config-server") {
                    sh "kubectl apply --namespace=dev --force -f config-server-deployment.yml,config-server-service.yml"
                }
            }
        }
    }

//    post {
//        always {
//            sendNotifications(currentBuild.result)
//        }
//    }
}
