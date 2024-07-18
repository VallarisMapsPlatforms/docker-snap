FROM python:3.10.14-bullseye

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt -y install tzdata
RUN apt install -y wget curl nano  openjdk-11-jdk

WORKDIR /snap

ARG SNAP_VERSION=10.0

RUN wget https://step.esa.int/downloads/${SNAP_VERSION}/installers/esa-snap_all_linux-${SNAP_VERSION}.0.sh

COPY response.varfile /snap/response.varfile
RUN sh esa-snap_all_linux-${SNAP_VERSION}.0.sh -q -varfile response.varfile

RUN /usr/local/esa-snap/bin/snappy-conf /usr/local/bin/python3.10
RUN mv /root/.snap/snap-python/esa_snappy /usr/local/lib/python3.10/site-packages

ENV PATH=$PATH:/usr/local/esa-snap/bin
RUN rm -r /snap

WORKDIR /mnt
