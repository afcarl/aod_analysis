.PHONY: clean build

build:
	docker build . -t peabody124/datajoint-jupyter

push:
	docker push peabody124/datajoint-jupyter
