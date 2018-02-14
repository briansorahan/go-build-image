IMG = bsorahan/go-build-image

all: image

image: .image

.image: Dockerfile
	@docker build -t $(IMG) .

clean:
	@-docker rmi $(IMG)
	@rm -f .image

push: .image
	@docker push $(IMG)

.PHONY: all clean push
