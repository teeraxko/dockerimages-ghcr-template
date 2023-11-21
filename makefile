NAME=Teera TTS
IMAGE=teeraxko/dockerimage2gcr-docker-hub
TAG=lastest

hello:
	echo "Hello ${NAME}"

world: hello
	echo "This is a chined command"

build:
	docker build . -t "${IMAGE}:${TAG}"

run: build
	docker run "${IMAGE}:${TAG}"

publish: build
	# docker push teeraxko/hello-docker-hub:lastest
	docker push "${IMAGE}:${TAG}"