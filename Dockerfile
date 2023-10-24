FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install -U -r requirements.txt
RUN pip install -U pip 
CMD ["bash", "start.sh"]


