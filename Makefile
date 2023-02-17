IMAGE_NAME = hidori/cspell

.PHONY: build
build:
	docker build -f ./Dockerfile -t ${IMAGE_NAME} .

.PHONY: rebuild
rebuild:
	docker build -f ./Dockerfile -t ${IMAGE_NAME} --no-cache .

.PHONY: run
run:
	docker run -it --rm \
		-v "$$PWD":/workdir \
		${IMAGE_NAME} \
		cspell lint /workdir

.PHONY: version
version:
	docker run -it --rm \
		${IMAGE_NAME} \
		cspell --version

.PHONY: rmi
rmi:
	docker rmi -f ${IMAGE_NAME}

.PHONY: pull
pull: rmi
	docker pull ${IMAGE_NAME}
