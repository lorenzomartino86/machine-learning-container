FROM python:3.6

RUN apt-get --yes update
RUN pip install jupyter

# Configuration of python libraries
RUN mkdir /libs
COPY requirements.txt /libs
WORKDIR /libs
RUN pip install -r requirements.txt

# Configuration of Jupyter notebook
COPY ./notebook.sh /etc/notebook.sh
RUN chmod 775 /etc/notebook.sh
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /home/admin
RUN mkdir /home/admin/time_data/
COPY time_data/  /home/admin/time_data/
COPY *.ipynb /home/admin/
CMD /etc/notebook.sh
