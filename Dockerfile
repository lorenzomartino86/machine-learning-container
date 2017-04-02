FROM python:latest
RUN pip install flask jupyter numpy pandas scikit-learn pandas-datareader wtforms scipy matplotlib
COPY ./notebook.sh /home/admin/notebook.sh
RUN chmod 775 /home/admin/notebook.sh && mkdir /home/admin/notebook
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /home/admin/notebook
CMD /home/admin/notebook.sh
