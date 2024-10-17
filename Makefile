IMG := localhost/mkdocs:latest

.PHONY: build
build:
	podman build \
		--arch amd64 \
		--os linux \
		--tag ${IMG} \
		.
.PHONY: save
save:
	podman save ${IMG} > mkdocs.tar
	gzip -9 < mkdocs.tar > mkdocs.tar.gz
	rm mkdocs.tar
