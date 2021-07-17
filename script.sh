#!/bin/bash

sudo apt update && sudo apt install --yes build-essential flex bison wget subversion m4 python3 python3-dev python3-setuptools libgmp-dev libssl-dev git

wget https://crypto.stanford.edu/pbc/files/pbc-0.5.14.tar.gz && tar xvf pbc-0.5.14.tar.gz && cd pbc-0.5.14 && ./configure LDFLAGS="-lgmp" && make && sudo make install && sudo ldconfig

cd ../ && git clone https://github.com/JHUISI/charm.git && cd charm && ./configure.sh && make && sudo make install && sudo ldconfig && cd ../
