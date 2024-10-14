FROM ubuntu
MAINTAINER ganoliz willy123301@gmail.com
WORKDIR /test
COPY index.html /test
COPY script.js /test
COPY style.css /test
EXPOSE 9000
RUN apt-get update
RUN apt-get -y install w3m
CMD w3m index.html