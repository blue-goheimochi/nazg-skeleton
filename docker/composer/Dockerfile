FROM ubuntu:16.04

MAINTAINER Yuta Ohashi <ooohhhaaassshhhiii@gmail.com>

RUN apt-get update

RUN apt-get install -y software-properties-common apt-transport-https

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xB4112585D386EB94

RUN add-apt-repository https://dl.hhvm.com/ubuntu

RUN apt-get update

RUN apt-get install -y hhvm

RUN apt-get install -y curl

RUN apt-get install -y git

RUN rm -rf /var/lib/apt/lists/*

RUN rm -rf /app && mkdir /app && chmod 755 /app

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

CMD ["composer"]