#!/bin/bash
echo "Docker compose down of root directory..."
cd docker-compose
docker-compose down

echo "Looking for images of nginx and php to remove"
PHP_IMAGE_ID=$(docker images -q php)
NGINX_IMAGE_ID=$(docker images -q nginx)

if [ -z "$PHP_IMAGE_ID" ] && [ -z "$NGINX_IMAGE_ID" ];
then 
    echo "No images found";
else 
    echo "Removing Images";
    docker rmi $PHP_IMAGE_ID $NGINX_IMAGE_ID; 
fi

echo "Environment cleaned."