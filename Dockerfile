FROM debian:bullseye

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    hdf5-tools \
    wget \
  && apt-get clean

WORKDIR /tmp

RUN wget http://ftp.ubuntu.com/ubuntu/ubuntu/pool/universe/p/python-pysam/python3-pysam_0.17.0+ds-2build1_amd64.deb  \
  && apt install ./python3-pysam_0.17.0+ds-2build1_amd64.deb

RUN wget http://ftp.ubuntu.com/ubuntu/ubuntu/pool/universe/p/pbalign/python-pbalign_0.2.0-1_all.deb  \
  && apt install ./python-pbalign_0.2.0-1_all.deb

RUN curl http://ftp.ubuntu.com/ubuntu/ubuntu/pool/universe/p/pbalign/pbalign_0.2.0-1_all.deb --output pbalign_0.2.0-1_all.deb \
  && apt install ./pbalign_0.2.0-1_all.deb