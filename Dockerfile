FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN git clone https://github.com/admin44449999/Toystack

WORKDIR /usr/src/app/Toystack
RUN chmod 777 /usr/src/app/Toystack
RUN pip3 install --no-cache-dir -r requirements.txt
CMD ["bash", "start.sh"]
