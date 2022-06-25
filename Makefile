DOCKER_REPO?=registry.gitlab.com/shikho/backend
MAIN_IMAGE_NAME?=gateway

default: build

.PHONY: build

build:
		GOOS=linux go build -gcflags "all=-N -l" -a -installsuffix cgo . && \
		docker build -t tariquenasrullah/foo:latest .
