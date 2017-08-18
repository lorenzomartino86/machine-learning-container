FROM lorenzomartino/machine-learning-jupyter:latest

COPY requirements.txt /libs
WORKDIR /libs
RUN sudo pip install -r requirements.txt

# Configuration of Jupyter notebook
WORKDIR /home/admin
CMD /etc/notebook.sh
