# FROM ubuntu:latest
FROM ubuntu:focal

WORKDIR /home

RUN apt update && apt upgrade -y

RUN apt install libcurl4 -y

RUN apt install nano -y

RUN apt install python3 -y

COPY ./src ./src

COPY ./test_server ./test_server

RUN ./test_server/fix_dependencies.sh

EXPOSE 19132 8080

CMD cd ./src && LD_LIBRARY_PATH=. ./bedrock_server
# CMD ./test_server/fix_dependencies.sh && ./test_server/run.sh