# Docker images

This repository contains some useful images for data-science.

See more at [docker hub](https://hub.docker.com/search?q=bergloman&type=image).

## deep-learning

https://hub.docker.com/r/bergloman/deep-learning

```bash
docker pull bergloman/deep-learning:latest
```

Based on `jupyter-tensorflow`, which contains `tensorflow` and `keras`.

Additionally, it contains `mxnet` and `gluon`, so you can do your deep-learning
experiments with most commonly used technologies.

## problog

https://hub.docker.com/r/bergloman/problog

```bash
docker pull bergloman/problog:latest
```

Python-based image with ProbLog (probabilistic Prolog).

## qminer

```bash
docker pull bergloman/qminer:latest
```

Based on `ubuntu`, contains custom built `nodejs` and `qminer`.
Useful for C++ development.

Built code is located in `/var/qminer/qminer` directory.
