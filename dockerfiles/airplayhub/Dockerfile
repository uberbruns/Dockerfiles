FROM node:7.5-wheezy
MAINTAINER	Karsten Bruns <karsten@bruns.me>

##################################################
# Install dependencies                           #
##################################################

RUN apt-get update && apt-get install -y \
    software-properties-common \
    python \
    build-essential \
    git \
    libavahi-compat-libdnssd-dev


##################################################
# Install airplayhub                             #
##################################################

RUN npm i -g https://github.com/noelhibbard/node-airplayhub.git


##################################################
# Start                                          #
##################################################

USER root
EXPOSE 5353 8089

ADD config.json /root/config.json

ADD run.sh /root/run.sh
RUN ["chmod", "+x", "/root/run.sh"]
CMD ["/root/run.sh"]