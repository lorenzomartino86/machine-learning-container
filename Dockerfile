FROM python:3.5
RUN pip install flask jupyter numpy pandas scikit-learn pandas-datareader wtforms scipy matplotlib
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /home/admin
CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--no-browser", "--debug"]
