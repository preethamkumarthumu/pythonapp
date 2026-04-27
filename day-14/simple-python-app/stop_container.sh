#!/bin/bash
set -e

docker stop flask-container || true
docker rm flask-container || true
