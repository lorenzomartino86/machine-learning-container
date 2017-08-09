FROM python:3.6

RUN apt-get --yes update && \
    apt-get --yes install build-essential \
                          gcc   \
                          g++   \
                          bison \
                          flex \
                          perl \
                          tcl-dev \
                          tk-dev \
                          blt \
                          libxml2-dev \
                          zlib1g-dev \
                          default-jre \
                          doxygen \
                          libwebkitgtk-1.0-0 \
                          openmpi-bin \
                          libopenmpi-dev \
                          libpcap-dev \
                          autoconf \
                          automake \
                          libproj0 \
                          libgdal1-dev \
                          libfox-1.6-dev \
                          libgdal-dev \
                          libxerces-c-dev
RUN apt-get --yes update && \
    apt-get --yes install pandoc && \
    apt-get --yes install texlive-full
RUN pip install jupyter

# Configuration of Jupyter notebook
COPY ./notebook.sh /etc/notebook.sh
RUN chmod 775 /etc/notebook.sh
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /home/admin
CMD /etc/notebook.sh
