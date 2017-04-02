[![CircleCI](https://circleci.com/gh/lorenzomartino86/machine-learning-container.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/lorenzomartino86/machine-learning-container)

# machine-learning-container
A docker container to expose a portable laboratory for machine learning experiments

Run container simply executing
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
