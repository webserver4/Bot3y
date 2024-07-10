FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN git clone https://github.com/webserver4/Toystack1

WORKDIR /usr/src/app/Toystack1
RUN chmod 777 /usr/src/app/Toystack1
RUN pip3 install --no-cache-dir -r requirements.txt
CMD ["bash", "start.sh"]
