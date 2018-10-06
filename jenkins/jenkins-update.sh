DATE=$(date -I)

docker build . --no-cache -t kozhenkov/jenkins-docker:$DATE
docker tag kozhenkov/jenkins-docker:$DATE kozhenkov/jenkins-docker:latest

docker push kozhenkov/jenkins-docker:$DATE
docker push kozhenkov/jenkins-docker:latest

kubectl apply --force -f jenkins-deployment.yml
