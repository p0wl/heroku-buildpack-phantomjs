
FROM ubuntu:14.10

RUN sudo apt-get update

RUN sudo apt-get install -y unzip g++ flex bison gperf ruby perl libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev libpng-dev libjpeg-dev make git libqt5webkit5-dev

RUN mkdir -p /app
RUN cd /app
WORKDIR /app
ADD . /app

RUN ./bin/compile build cache


