FROM shriramsharma/basedocker
MAINTAINER Shriram Sharma "shriram.sharma22@gmail.com"

RUN apt-get update
RUN git clone https://github.com/dotcloud/docker-registry.git
RUN cd /docker-registry && cp ./config/config_sample.yml ./config/config.yml
RUN apt-get install -y build-essential python-dev libevent-dev python-pip libssl-dev liblzma-dev libffi-dev
RUN cd /docker-registry && pip install .


EXPOSE 5000
