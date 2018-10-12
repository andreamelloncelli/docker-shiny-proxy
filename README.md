# What

It is a docker image with shiny-proxy server.

# Why (Purpose)

Isolated shiny-proxy server with a specific version of the software.

# How to

## Set up

	sudo docker network create sp-example-net

## Build

	docker build . -t shinyproxy:v-2.0.2

## Run

	docker run \
	  --rm \
	  -v /var/run/docker.sock:/var/run/docker.sock \
	  -v "$(pwd)":/opt/shinyproxy/config/ \
	  --net sp-example-net \
	  -p 8080:8080 \
	  shinyproxy:v-2.0.2

# Source

Initial idea was taken from `/shinyproxy-example/` folder in https://github.com/openanalytics/shinyproxy-config-examples.git

Thanks Openanalytics.



