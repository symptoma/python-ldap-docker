.PHONY: build push
IMAGE_NAME := symptoma/python-ldap-docker

build:
	docker build -t $(IMAGE_NAME):latest .

push:
	docker tag $(IMAGE_NAME):latest $(IMAGE_NAME):$(t)
	docker push $(IMAGE_NAME):$(t)
	docker push $(IMAGE_NAME):latest
