FROM ubuntu
RUN apt-get update && apt-get upgrade
RUN apt-get install curl wget net-tools
RUN mkdir /var/flaskapp

WORKDIR /var/flaskapp

COPY .  .

RUN apk update

RUN apk add python3

RUN pip3 install -r requirement.txt

EXPOSE 5000 

CMD ["python3","app.py"]
