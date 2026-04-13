FROM node:bullseye-slim@sha256:346a5458ba7903d22af20440c771dc43cc8c4f337e96dfc596e960a76a0607bd

LABEL org.opencontainers.image.authors="Mikael Vandmo <mikael@vandmo.se>"

RUN apt-get update &&\
 DEBIAN_FRONTEND="noninteractive"\
 apt-get --assume-yes install\
  git\
  gcc\
  make\
  python3\
  krb5-config\
  libkrb5-dev\
  g++\
  libssl-dev\
  libcurl4-openssl-dev\
  file &&\
  manpages &&\
 rm -rf /var/lib/apt/lists/*

RUN npm install -g https://github.com/jez/bars.git && npm install -g git-heatmap && chmod +x /usr/local/bin/git-heatmap

ENTRYPOINT []
CMD ["git", "heatmap"]
