FROM centos:7

RUN  cd /root && \
     yum install make -y && \
     yum install wget -y && \
     yum install autoconf automake libtool git kernel-headers -y && \
     wget https://github.com/ntop/n2n/archive/refs/tags/3.0.tar.gz && \
     tar xzvf 3.0.tar.gz

RUN  cd /root/n2n-3.0 && \
     ./autogen.sh && \
     ./configure && \
     make && make install

EXPOSE 1020/udp

CMD supernode -p 1020 -f -a 192.168.253.0-192.168.253.0/24 -c 121233 -M
