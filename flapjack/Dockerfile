FROM ubuntu:14.04
RUN ["apt-get","update"]
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 8406B0E3803709B6
RUN echo 'deb http://packages.flapjack.io/deb/v1 trusty main' | sudo tee  /etc/apt/sources.list.d/flapjack.list
RUN ["apt-get","update"]
RUN ["apt-get","-y","install","flapjack","postfix"]
ADD flapjack /etc/flapjack
ADD entry_script.sh /
ADD postfix /etc/postfix
ENTRYPOINT ["/entry_script.sh"]
CMD ["flapjack"]
