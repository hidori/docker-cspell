IMAGE_NAME = hidori/cspell

.PHONY: build
build:
	docker build -t ${IMAGE_NAME} .

.PHONY: rebuild
rebuild:
	docker build --no-cache -t ${IMAGE_NAME} .

.PHONY: rmi
rmi:
	docker rmi -f ${IMAGE_NAME}

.PHONY: run
run:
	docker run --rm ${IMAGE_NAME} -V

.PHONY: version
version:
	git checkout main
	git fetch
	git pull
	git tag `jq -r '.dependencies.cspell' ./package.json | sed 's/[^0-9.]//'`
	git push --tags
