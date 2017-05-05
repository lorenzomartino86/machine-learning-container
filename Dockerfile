FROM python:latest
RUN pip install flask jupyter numpy pandas scikit-learn pandas-datareader wtforms scipy matplotlib seaborn sqlalchemy lxml html5lib BeautifulSoup4 plotly cufflinks scipy pydot
COPY ./notebook.sh /etc/notebook.sh
RUN chmod 775 /etc/notebook.sh
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /home/admin
CMD /etc/notebook.sh
