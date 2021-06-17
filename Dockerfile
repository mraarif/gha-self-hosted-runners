FROM summerwind/actions-runner-controller:v0.18.2 AS builder


FROM ubuntu:20.04

RUN apt-get update -y && \
	apt-get install -y python3-pip python3-dev

WORKDIR /app

COPY . /app

RUN pip3 install pipenv && pipenv install

EXPOSE 8080

COPY --from=builder . /manager

WORKDIR /manager

ENTRYPOINT ["/manager/manager"]
