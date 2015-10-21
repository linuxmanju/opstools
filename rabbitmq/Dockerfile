FROM ubuntu:14.04
RUN ["apt-get","update"]
RUN ["apt-get","-y","install","wget"]
RUN ["wget","http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_general/esl-erlang_18.0-1~ubuntu~trusty_amd64.deb"]
RUN ["apt-get","-y","install","libwxbase2.8-0","libwxgtk2.8-0"]
RUN ["dpkg","-i","esl-erlang_18.0-1~ubuntu~trusty_amd64.deb"]
RUN ["apt-get","-y","install","rabbitmq-server"]
ADD entry_script.sh /entry_script.sh
ENTRYPOINT ["/entry_script.sh"]
CMD ["sensu"]
