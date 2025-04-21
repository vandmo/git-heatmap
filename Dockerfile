FROM node:bullseye-slim@sha256:8bd7c600b3f68cbe773f4f0b236de52bb2c65a34966921b8bb4c73eaee38e540

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
