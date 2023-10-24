FROM mysterysd/wzmlx:heroku
WORKDIR .
COPY . .

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirementsp.txt /requirementsp.txt

RUN cd /
RUN pip install -U pip && pip install -U -r requirementsp.txt
WORKDIR /app

COPY . .
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
