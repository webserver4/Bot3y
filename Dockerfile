FROM ubuntu:24.04

WORKDIR /usr/src/mergebot
RUN chmod 777 /usr/src/mergebot
RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get install apt-utils -y \ 
    && apt-get install -y python3-full python3-pip git wget curl pv jq ffmpeg neofetch mediainfo \
    && apt-get clean
RUN git clone https://github.com/aryanchy451/4GB_merge

WORKDIR /usr/src/mergebot/4GB_merge
RUN chmod 777 /usr/src/mergebot/4GB_merge
RUN python3 -m venv venv && chmod +x venv/bin/python
RUN venv/bin/python -m pip install --no-cache-dir -r requirements.txt
RUN chmod +x start.sh
CMD ["bash","start.sh"]
