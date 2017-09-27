FROM jupyter/scipy-notebook
MAINTAINER James Cotton <peabody124@gmail.com>

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends openconnect && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD vpn_connect /etc/init.d/vpn_connect
RUN chmod u+s /etc/init.d/vpn_connect

USER $NB_USER

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ENTRYPOINT ["/etc/init.d/vpn_connect"]
