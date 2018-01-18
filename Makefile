IMG = bsorahan/go-build-image

all: image

image: .image

.image: Dockerfile
	@docker build -t $(IMG) .

clean:
	@-docker rmi $(IMG)

push: .image
	@docker push $(IMG)

.PHONY: all clean push
