[![CircleCI](https://circleci.com/gh/lorenzomartino86/machine-learning-container.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/lorenzomartino86/machine-learning-container)

### Introduction
A docker container to expose a portable laboratory for machine learning experiments.

On this jupyter instance you can do one of the following tasks:
- Data science analysis using most popular py libraries: pandas, numpy, matplotlib,
- Build graphviz images
- Write and export LaTex code from inside notebook

N.B: This is a container and by nature it's a stateless instance of an image. Export files to your host machine before shutting down the container or you will lose your work.

### Prerequisites
You should have docker installed on your machine. Please follow official documentation: https://docs.docker.com/engine/installation/

### Instructions
You can pull the already built image from dockerhub following instructions shown at link https://hub.docker.com/r/lorenzomartino/machine-learning-lab/

Or ou can directly build and run jupyter simply executing
```
$ docker-compose up
```

Then you should notice a log like following ones on the container side:
```
jupyter_1  |     
jupyter_1  |     Copy/paste this URL into your browser when you connect for the first time,
jupyter_1  |     to login with a token:
jupyter_1  |         http://0.0.0.0:8888/?token=e7dd783b5eb30462c7079b2f477eafa7024f1f981cddb99b
```

You should access on the host machine typing following URL on browser
```
    http://127.0.0.1:8888/tree
```

It will ask you the token to be used. In the above sample is e7dd783b5eb30462c7079b2f477eafa7024f1f981cddb99b.

