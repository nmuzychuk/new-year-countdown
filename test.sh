#!/bin/bash

docker pull nginx:1.13-alpine
docker run -d -v $(pwd):/usr/share/nginx/html:ro -p 8080:80 nginx:1.13-alpine
sleep 3
curl localhost:8080 | grep 'ng-app="nyc"'
