FROM python:3.4

COPY . /tmp/py-skygear

RUN (cd /tmp/py-skygear; python setup.py install) && rm -rf /tmp/py-skygear

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ENV PYTHONUNBUFFERED 0