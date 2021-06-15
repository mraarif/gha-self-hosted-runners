FROM ubuntu:20.04

RUN apt-get update -y && \
	apt-get install -y python3-pip python3-dev

WORKDIR /app

COPY . /app

RUN pip3 install pipenv && pipenv install

EXPOSE 8080

CMD ["pipenv", "run", "python", "app.py"]
