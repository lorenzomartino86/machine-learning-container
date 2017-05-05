FROM python:latest
RUN pip install flask jupyter numpy pandas scikit-learn pandas-datareader wtforms scipy matplotlib seaborn sqlalchemy lxml html5lib BeautifulSoup4 plotly cufflinks scipy pydot
RUN apt-get install build-essential gcc g++ bison flex perl tcl-dev tk-dev blt libxml2-dev zlib1g-dev default-jre doxygen graphviz libwebkitgtk-1.0-0 openmpi-bin libopenmpi-dev libpcap-dev autoconf automake libproj0 libgdal1-dev libfox-1.6-dev libgdal-dev libxerces-c-dev
COPY ./notebook.sh /etc/notebook.sh
RUN chmod 775 /etc/notebook.sh
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /home/admin
CMD /etc/notebook.sh
