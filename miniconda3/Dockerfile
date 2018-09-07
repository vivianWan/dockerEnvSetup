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

# install Java and scala
# RUN apt-get install default-jre && apt-get install scala

RUN apt-get install -y curl grep sed dpkg && \
    TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o "/v.*\"" |sed 's:^..\(.*\).$:\1:'` && \
    curl -L "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb" >tini.deb && \
    dpkg -i tini.deb && \
    rm tini.deb && \
    apt-get clean

# Configure the Environment Variable with ENV
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /opt/conda/bin:$PATH

# EntryPoint
ENTRYPOINT [ "/usr/bin/tini", "--" ]
