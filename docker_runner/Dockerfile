FROM ubuntu:14.04

RUN sudo apt-get update
RUN sudo apt-get install -y wget
RUN sudo apt-get install -y build-essential
RUN sudo apt-get -y install nano
RUN sudo apt-get install -y python3-dev
RUN sudo apt-get install -y libpython3.4-dev
ADD script.sh .
RUN chmod +x script.sh
CMD bash -C 'script.sh'
