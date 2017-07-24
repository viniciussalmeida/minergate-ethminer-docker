FROM ubuntu:14.04
RUN apt-get -y update
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum-qt
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get -y update
RUN apt-get -y install ethminer
ENTRYPOINT ["ethminer"]
CMD ["-C", "-F", "http://eth.pool.minergate.com:55751/$email", "--disable-submit-hashrate"]
