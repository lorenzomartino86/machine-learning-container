[![CircleCI](https://circleci.com/gh/lorenzomartino86/machine-learning-container.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/lorenzomartino86/machine-learning-container)

### Introduction
This project handles build and distribution of some docker images in order to extend the operations on a jupyter notebook.

Following jupyter notebook instances are built on separated images:
- **machine_learning**: Used for data science analysis using most popular libraries: pandas, numpy, matplotlib, etc.
- **graphviz**: Used for complex graph generation with graphviz library. It's configured with python api for graphviz.
- **latex**: Used for math documentation. It allows writing and exporting of LaTex code from inside notebook
- **finance**: Used for finance analysis with specific libraries.
- **Ibm Watson NLP**: Used for natural language processing through IBM Watson cloud api.

N.B: These are containers and by nature they are stateless instances of an image. Export files to your host machine before shutting down the container or you will lose your work.

### Prerequisites
You should have docker installed on your machine. Please follow official documentation: https://docs.docker.com/engine/installation/

### Instructions
You can pull the already built image from dockerhub following instructions shown at following links:
- **machine_learning**: https://hub.docker.com/r/lorenzomartino/machine-learning-jupyter/
- **graphviz**: https://hub.docker.com/r/lorenzomartino/graphviz-jupyter/
- **latex**: https://hub.docker.com/r/lorenzomartino/latex-jupyter/
- **finance**: https://hub.docker.com/r/lorenzomartino/finance-jupyter/
- **Ibm Watson NLP**: https://hub.docker.com/r/lorenzomartino/ibm-watson-nlp-jupyter/

Or ou can directly build and run jupyter simply executing (in case you need machine learning image)
```
$ docker-compose -f machine_learning/docker-compose.yml up -d 
```

Note: You can enable widget extension inside the container running following command:
```
   jupyter nbextension enable --py --sys-prefix widgetsnbextension
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


