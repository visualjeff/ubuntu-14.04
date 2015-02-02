# Docker version 1.3.X
#
# To build: sudo docker build --force-rm=true -t visualjeff/ubuntu:14.04 .
# To tag: sudo docker tag f43f1a247897 visualjeff/ubuntu:latest 

FROM    ubuntu:14.04
 
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y dist-upgrade && apt-get clean && apt-get autoclean && apt-get -y autoremove && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Define default command.
CMD ["bash"]
