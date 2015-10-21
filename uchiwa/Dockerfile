FROM ubuntu:14.04
RUN ["apt-get","-y","install","wget"]
RUN ["wget","http://dl.bintray.com/palourde/uchiwa/uchiwa_0.10.3-1_amd64.deb"]
RUN ["dpkg","-i","uchiwa_0.10.3-1_amd64.deb"]
ADD uchiwa.json /etc/sensu/
ADD entry_script.sh /entry_script.sh
ENTRYPOINT ["/entry_script.sh"]
CMD ["uchiwa"]
