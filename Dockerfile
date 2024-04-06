FROM debian:buster

ENV cname=121233

RUN  cd /root && \
     apt-get update && \
     apt-get install wget -y && \
     apt-get install autoconf make gcc -y && \
     wget https://github.com/ntop/n2n/archive/refs/tags/3.0.tar.gz && \
     tar xzvf 3.0.tar.gz

RUN  cd /root/n2n-3.0 && \
     ./autogen.sh && \
     ./configure && \
     make && make install

EXPOSE 1021/udp

CMD supernode -p 1021 -f -a 192.168.253.0-192.168.253.0/24 -c ${cname} -M
