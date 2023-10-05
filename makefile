IMAGE_NAME=
IMAGE_TAG=1.0
REPO=maven:3.9-amazoncorretto-17

build:
		@docker run -it --rm -v $$PWD:/app -w /app/ --entrypoint "" $(REPO) sh ./build-mvn.sh
build-docker
		@echo "##################### START DOCKER BUILD ####################"
		@docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .
		@echo "##################### IMAGE BUILD END   #####################""
		@echo "#####################  PUSH IMAGE TO REGISTRY ###############"
		@docker push $(IMAGE_NAME):$(IMAGE_TAG)
		@echo "##################### PUSHED TO REGISTRY ####################"