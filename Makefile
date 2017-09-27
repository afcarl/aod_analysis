.PHONY: clean build

build:
	docker build . -t peabody124/datajoint-jupyter
	docker build . -f Dockerfile.aod -t peabody124/aod-analysis

push:
	docker push peabody124/datajoint-jupyter
	docker push peabody124/aod-analysis
