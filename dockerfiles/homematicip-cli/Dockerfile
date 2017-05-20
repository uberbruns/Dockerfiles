FROM python:2
MAINTAINER	Karsten Bruns <karsten@bruns.me>

# Clone the app into the docker container
RUN mkdir /homematicip && \
    cd homematicip && \
    git clone https://github.com/uberbruns/homematicip-rest-api && \
    cd homematicip-rest-api && \
    pip install --requirement requirements.txt


RUN mkdir ~/config
WORKDIR ~/config
VOLUME ["~/config"]

USER root

ADD run.sh /root/run.sh
RUN ["chmod", "+x", "/root/run.sh"]
ENTRYPOINT ["/root/run.sh"]
