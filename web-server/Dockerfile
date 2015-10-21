FROM ubuntu:14.04
RUN ["apt-get","update"]
RUN ["apt-get","install","-y","nginx"]
ADD entry_script.sh /
ENTRYPOINT ["/entry_script.sh"]
CMD ["nginx"]
