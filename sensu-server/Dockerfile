FROM ubuntu:14.04
RUN ["apt-get","update"]
RUN ["apt-get","-y","install","wget"]
RUN ["wget","http://repos.sensuapp.org/apt/pubkey.gpg"]
RUN ["apt-key","add","pubkey.gpg"]
RUN echo 'deb http://repos.sensuapp.org/apt sensu unstable' | tee -a /etc/apt/sources.list.d/sensu-server.list
RUN ["apt-get","update"]
RUN ["apt-get","-y","install","sensu"]
ADD config.json /etc/sensu/config.json
RUN ["/opt/sensu/embedded/bin/gem","install","sensu-plugin"]
ADD entry_script.sh /entry_script.sh
ENTRYPOINT ["/entry_script.sh"]
CMD ["sensu"]
