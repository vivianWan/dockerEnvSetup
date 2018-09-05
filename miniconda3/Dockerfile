FROM debian

LABEL mainterner=@vivianwan

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing && \
    apt-get install -y \
    wget bzip2 ca-certificates 

RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \ 
wget --quiet \ 
   https://repo.continuum.io/miniconda/Miniconda3-4.5.4-Linux-x86_64.sh -O ~/miniconda.sh && \ 
   /bin/bash ~/miniconda.sh -b -p /opt/conda && \ 
   rm ~/miniconda.sh

