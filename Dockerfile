FROM gcc
LABEL maintainer =@vivianWan
RUN apt-get update && \
    apt-get install -y \
    gsl-bin \
    libgslo-dbg \
    libgslo-dev \
    libgsloldbl
