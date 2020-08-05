#!/bin/bash
docker build -t tfimage:v1 .
docker run -it -d --name tcont1 tfimage:v1
docker exec -it tcont1 bash -c 'cd /root/TFCode/TF_Files && chmod 755 /root/TFCode/TF_Files/terraform.sh && ./terraform.sh; exec "${SHELL:-sh}"'
