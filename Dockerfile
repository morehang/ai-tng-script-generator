FROM node:10.16.3-stretch
RUN apt update && apt upgrade -y && apt install -y python3-pip
WORKDIR /usr/src/app
COPY ./packages/scriptgen ./scriptgen
RUN cd scriptgen && pip3 install -r requirements.txt && cd ..
COPY ./