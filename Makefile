BRANCH = $(shell git rev-parse --abbrev-ref HEAD)

build:
	docker build -t enm10k/grpc-hello-world:"$(BRANCH)" . 

run-server:
	docker run -e PORT=443 -p 443:443 enm10k/grpc-hello-world:"$(BRANCH)" greeter_server

hello-to-local:
	@echo "# TO BE IMPLEMENTED"

hello:
	@echo "# TO BE IMPLEMENTED"
