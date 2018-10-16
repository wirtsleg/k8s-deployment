pipeline {
    agent any

    stages {
        stage('Apply yamls') {
            steps {
                dir("config-server") {
                    sh "kubectl apply --namespace=dev -f config-server-deployment.yml,config-server-service.yml"
                    sh "kubectl patch deployment config-server-deployment --namespace=dev -p {\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"\$(date +%s)\"}}}}}"

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
