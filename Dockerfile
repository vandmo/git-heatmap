FROM node:bullseye-slim@sha256:0777883c3f8d9b62a4774fb6ff0b33f2771ea63d96a5dff8c3340a44f9019198

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
