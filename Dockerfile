FROM python:latest
RUN pip install flask jupyter numpy pandas scikit-learn pandas-datareader wtforms scipy matplotlib
RUN useradd -ms /bin/bash admin
USER admin
COPY ./notebook.sh /home/admin/notebook.sh
RUN chmod u+x /home/admin/notebook.sh && mkdir /home/admin/notebook
WORKDIR /home/admin/notebook
CMD /home/admin/notebook.sh
