FROM python:latest
RUN pip install Flask==0.11.1 jupyter numpy
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /home/admin
CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--no-browser"]
