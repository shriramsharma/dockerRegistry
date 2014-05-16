Private docker registry
==============

SETUP
1.Build docker file: sudo docker build -t <TAG_NAME> .
2.Run docker: sudo docker run -d -p 2222:22 -p 5000:5000 <TAG_NAME>

SSH into the container: ssh root@localhost -p 2222
Password: docker

RUN: gunicorn --access-logfile - --debug -k gevent -b 0.0.0.0:5000 -w 1 docker_registry.wsgi:application

THATS IT!!!, you have your own private registry.

https://index.docker.io/u/shriramsharma/docker-registry/
