FROM lorenzomartino/machine-learning-jupyter:latest
USER admin
COPY requirements.txt /libs
WORKDIR /libs
RUN pip install -r requirements.txt --user ADMIN

# Configuration of Jupyter notebook
WORKDIR /home/admin
CMD /etc/notebook.sh
