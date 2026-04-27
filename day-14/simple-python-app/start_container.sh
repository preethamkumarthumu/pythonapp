#!/bin/bash
set -e

cd /home/ec2-user/flask-app

docker stop flask-container || true
docker rm flask-container || true

docker build -t flask-app .
docker run -d -p 80:5000 --name flask-container flask-app
