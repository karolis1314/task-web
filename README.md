# Task by Karolis

# NOTE:
Have minikube, docker, docker-compose, helm3 and make environment running in Linux system. (Windows might have bugs as this was done in linux).

# How to run:
1- make start. This command will bring docker-compose env up and open a browser page with php info title page.
2- make stop. Will bring down the environment and clean it.
3- make start-mini. Will deploy k8 manifests to the minikube cluster and open up browser with the service of php info title page.
4- make stop-mini. Will clean the minikube environmnent and close the service.
5- make start-helm. Will install helm charts to the minikube cluster and open the php info title page service.
6- make stop-helm. Will uninstall the helm release and clean up the environmnet.
