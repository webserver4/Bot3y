FROM mysterysd/wzmlx:latest
RUN git clone https://github.com/admin44449999/Toystack
WORKDIR /usr/src/app/Toystack
RUN chmod 777 /usr/src/app/Toystack


RUN pip3 install --no-cache-dir -r requirements.txt
RUN cd Toystack
CMD ["bash", "start.sh"]
