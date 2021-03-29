FROM python:2.7.15
MAINTAINER RobertLC
LABEL description="pysatools_heroku_build"

COPY requirements.txt /var/
RUN pip install --no-cache-dir -r /var/requirements.txt 
RUN pip install PySocks
RUN pip install requests
RUN pip install urllib
ADD run.py /home/run.py
ADD raz.py /home/raz.py

CMD python /home/run.py "$THE_URL" -w "$THE_WORKER" -s "$THE_STATUS"
