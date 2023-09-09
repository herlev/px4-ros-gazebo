FROM ros:humble

COPY ubuntu.sh /
COPY requirements.txt /

RUN apt update &&\
    apt install curl -y &&\
    curl -sSL http://get.gazebosim.org | sh &&\
    /ubuntu.sh --no-nuttx &&\
    rm /ubuntu.sh /requirements.txt
