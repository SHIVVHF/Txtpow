FROM mysterysd/wzmlx:heroku
WORKDIR .
COPY . .



RUN cd /
RUN pip install -U pip && pip install -U -r requirementsp.txt
WORKDIR /app

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN apt update && apt upgrade -y
RUN apt install git -y

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY requirementsp.txt /requirementsp.txt
RUN cd /
RUN pip install -U pip && pip install -U -r requirementsp.txt
CMD ["bash", "start.sh"]

