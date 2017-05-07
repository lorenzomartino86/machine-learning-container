FROM lorenzomartino/data-science-basement:latest
RUN apt-get --yes update && apt-get --yes install graphviz && apt-get --yes install pandoc && apt-get --yes install texlive-full
COPY ./notebook.sh /etc/notebook.sh
RUN chmod 775 /etc/notebook.sh
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /home/admin
CMD /etc/notebook.sh
