IMAGE_NAME = hidori/cspell

.PHONY: clean build rebuild run rmi

clean:
	rm -fr ./tmp

build:
	docker build -t ${IMAGE_NAME} .

rebuild:
	docker build --no-cache -t ${IMAGE_NAME} .

run:
	docker run --rm ${IMAGE_NAME} --version

rmi:
	docker rmi -f ${IMAGE_NAME}
