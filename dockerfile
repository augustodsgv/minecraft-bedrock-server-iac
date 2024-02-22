# FROM ubuntu:latest
FROM ubuntu:focal

WORKDIR /home/server

RUN apt update && apt upgrade -y

RUN apt install libcurl4 -y

RUN apt install nano -y

COPY ./bedrock-server .

EXPOSE 19132

CMD LD_LIBRARY_PATH=. ./bedrock_server