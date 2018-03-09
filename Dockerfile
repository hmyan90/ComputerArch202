FROM ubuntu:14.04

RUN apt-get update && apt-get install -y vim python-dev python-pip gcc clang cython linux-tools-4.4.0-31-generic && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

WORKDIR /home
ADD *B.py lib1T.py /home/
ADD test.py run.sh copy.sh /home/
RUN chmod +x /home/run.sh
RUN chmod +x /home/copy.sh
RUN bash -c "/home/copy.sh"



