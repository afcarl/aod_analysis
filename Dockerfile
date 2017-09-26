FROM jupyter/scipy-notebook
MAINTAINER James Cotton <peabody124@gmail.com>

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
