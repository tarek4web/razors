FROM python:2.7.15
MAINTAINER RobertLC
LABEL description="pysatools_heroku_build"
apt-get install python -y
ADD raz.py /home/raz.py
CMD python /home/raz.py "$THE_URL" -w "$THE_WORKER" -s "$THE_STATUS"
