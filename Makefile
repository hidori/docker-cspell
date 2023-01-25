IMAGE_NAME = hidori/cspell

.PHONY: build
build:
	docker build -f ./Dockerfile -t ${IMAGE_NAME}:latest .

.PHONY: rebuild
rebuild:
	docker build -f ./Dockerfile -t ${IMAGE_NAME}:latest --no-cache .

.PHONY: rmi
rmi:
	docker rmi -f ${IMAGE_NAME}

.PHONY: pull
pull: rmi
	docker pull ${IMAGE_NAME}

.PHONY: run
run:
	docker run -it --rm -v $$PWD:/workdir ${IMAGE_NAME} lint /workdir

.PHONY: version
version:
	docker run -it --rm ${IMAGE_NAME} --version
