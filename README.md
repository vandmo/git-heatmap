# git-heatmap
[![Build Status](https://github.com/vandmo/google-java-format/actions/workflows/test-and-release.yaml/badge.svg)](https://github.com/vandmo/git-heatmap/actions/workflows/test-and-release.yaml)
[![Docker Hub](https://img.shields.io/docker/v/vandmo/git-heatmap)](https://hub.docker.com/r/vandmo/git-heatmap)

Dockerization of https://github.com/jez/git-heatmap

## Examples

### Oneliner
```sh
docker run --rm -t --workdir=/local -v "${PWD}":/local vandmo/git-heatmap
```

### Interactive
```sh
docker run --rm -it -v "${PWD}":/local vandmo/git-heatmap bash
cd /local
git heatmap
```
