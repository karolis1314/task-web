#!/bin/bash
echo "Creating namespace for the services.";
kubectl create ns nginx-php;

echo "Deploying the service to minikube cluster using helm 3.";
helm install karolis-task helm-nginx-php/ -n nginx-php;

echo "This is the url for the webservice."
URL=$(minikube service nginx-service --url -n nginx-php)
echo $URL

echo -e "Opening browser now.\nSleeping for 10 seconds and will automatically open the browser."
sleep 10s
xdg-open $URL