FROM jupyter/scipy-notebook
MAINTAINER James Cotton <peabody124@gmail.com>

USER root

# libav-tools for matplotlib anim
RUN apt-get update && \
    apt-get install -y --no-install-recommends graphviz libgraphviz-dev pkg-config && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_USER

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ADD AodAnalysis.ipynb .
