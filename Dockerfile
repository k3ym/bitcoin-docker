FROM ubuntu:18.04

# use this PPA so the Berkley DB can get downloaded and installed.
RUN apt-get update \ 
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:bitcoin/bitcoin \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# install dependencies
RUN apt-get update \
    && apt-get install -y build-essential pkg-config libc6-dev m4 g++-multilib autoconf libtool unzip git python zlib1g-dev wget bsdmainutils automake libboost-all-dev  libboost-all-dev miniupnpc libdb4.8 libdb4.8-dev libdb4.8++-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler libminiupnpc-dev libqrencode-dev libssl-dev libevent-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root