DOCKER_NAME=quay.io/topfstedt/matrix-synapse
DOCKER_TAG=$(shell git branch | grep \* | cut -d ' ' -f2)-$(shell git rev-parse HEAD | cut -b 1-7)

rtfm:
	cat Makefile

clean_pyc:
	find . -name '*.pyc' -delete

force_committed:
	if [ $(shell git status --porcelain | wc -l) -ne 0 ]; then echo 'Found uncommitted changes!'; exit 1; fi

docker_loc:
	echo $(DOCKER_NAME):$(DOCKER_TAG)

docker_build: force_committed
	docker build -t $(DOCKER_NAME):$(DOCKER_TAG) .

docker_build_dev:
	docker build -t $(DOCKER_NAME):dev .

docker_build_latest: force_committed
	docker build -t $(DOCKER_NAME):latest .

docker_push:
	docker push $(DOCKER_NAME):$(DOCKER_TAG)

docker_push_latest:
	docker push $(DOCKER_NAME):latest

docker_run:
	docker run -p 127.0.0.1:8008:8008 --rm -ti $(DOCKER_NAME):$(DOCKER_TAG)

docker_run_dev:
	docker run -p 127.0.0.1:8008:8008 --rm -ti $(DOCKER_NAME):dev

docker_run_latest:
	docker run -p 127.0.0.1:8008:8008 --rm -ti $(DOCKER_NAME):latest

docker_sh:
	docker run --rm -ti $(DOCKER_NAME):$(DOCKER_TAG) sh

docker_sh_dev:
	docker run --rm -ti $(DOCKER_NAME):dev sh

docker_sh_latest:
	docker run --rm -ti $(DOCKER_NAME):latest sh
