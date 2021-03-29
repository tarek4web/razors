FROM python:2.7.15
MAINTAINER RobertLC
LABEL description="pysatools_heroku_build"
RUN apt-get install python -y
ADD raz.py /home/raz.py
ADD run.py /home/run.py
CMD python /home/run.py "$THE_URL" -w "$THE_WORKER" -s "$THE_STATUS"
