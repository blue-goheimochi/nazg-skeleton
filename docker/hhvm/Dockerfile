FROM ubuntu:16.04

MAINTAINER Yuta Ohashi <ooohhhaaassshhhiii@gmail.com>

RUN apt-get update

RUN apt-get install -y software-properties-common apt-transport-https

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xB4112585D386EB94

RUN add-apt-repository https://dl.hhvm.com/ubuntu

RUN apt-get update

RUN apt-get install -y hhvm

RUN rm -rf /var/lib/apt/lists/*

RUN rm -rf /var/www && mkdir /var/www && chmod 755 /var/www

ENV HHVM_PORT 9000
ENV HHVM_SOURCE_ROOT /var/www/html

EXPOSE $HHVM_PORT

COPY ./service.sh /root/
RUN chmod 744 /root/service.sh

CMD ["/root/service.sh"]