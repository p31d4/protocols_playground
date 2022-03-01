FROM rust:1.75.0

RUN export TERM=xterm-256color

RUN apt update

# versions got from apt-cache policy <package>
RUN apt install -y vim=2:9.0.1378-2 \
        gdb=13.1-3 \
        screen=4.9.0-4 \
        git=1:2.39.2-1.1 \
        tcpdump=4.99.3-1 \
        python3-scapy=2.5.0+dfsg-2

RUN cd /tmp && git clone https://github.com/nmap/nmap.git && \
        cd nmap && git checkout 9ef418af4e7b35e0ca24dc96b9553f150d1662b3 && \
        ./configure && make build-nping && \
        cp ./nping/nping /usr/bin && make clean
