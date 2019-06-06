# Description
This is docker container for Bitcoin Core built on ubuntu 18.04.

# Usage

## Preparation
Turn off firewall software installed on your computer because some dependencies cannot be installed.

※Don't forget turn it on after docker build.

## Docker build
- after cloning this repo

`cd bitcoin-docker`

`git clone https://github.com/bitcoin/bitcoin.git`

`docker build . -t btc-docker`

## start docker
`docker run -p 8332:8332 -p 8333:8333 -p 18332:18332 -o 18333:18333 -v $PWD/bitcoin:/root/bitcoin -it btc-docker bash`

# References
- http://www.reynoldtech.com/building-bitcoin-core-0-16-3-from-source-on-ubuntu-18-04-1-desktop-amd64/