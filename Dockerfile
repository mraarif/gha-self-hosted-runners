FROM summerwind/actions-runner:v2.278.0-ubuntu-20.04

USER root

RUN apt-get update -y && \
	apt-get install -y python3-pip python3-dev

WORKDIR /app

COPY . /app

RUN pip3 install pipenv && pipenv install

USER runner

CMD ["/entrypoint.sh"]
