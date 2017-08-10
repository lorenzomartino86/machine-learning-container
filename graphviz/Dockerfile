FROM python:3.6

RUN apt-get --yes update && \
    apt-get --yes install graphviz
RUN pip install jupyter graphviz

# Configuration of Jupyter notebook
COPY ./notebook.sh /etc/notebook.sh
RUN chmod 775 /etc/notebook.sh
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /home/admin
CMD /etc/notebook.sh
