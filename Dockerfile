FROM debian:stretch-slim

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        htop software-properties-common curl sudo apt-transport-https \
        ca-certificates wget telnet git rsync bzip2 gcc g++ zip bash \
        make openssl libssl-dev default-mysql-client default-libmysqlclient-dev \
        mysql-client mysql-common libpq-dev mycli pgcli \
        redis-tools imagemagick libmagickwand-dev build-essential \
  && \
    rm -rf /var/lib/apt/lists/*

ENV LC_ALL C.UTF-8
ENV LANG   C.UTF-8
