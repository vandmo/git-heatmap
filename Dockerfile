FROM node:bullseye-slim@sha256:ea46185af8498b01a0af84e32c8b17933944e2444e1bee7602ef74bf6c758c0a

MAINTAINER Mikael Vandmo <mikael@vandmo.se>

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
  file &&\
 rm -rf /var/lib/apt/lists/*

RUN npm install -g git-heatmap && chmod +x /usr/local/bin/git-heatmap

ENTRYPOINT []
CMD ["git", "heatmap"]