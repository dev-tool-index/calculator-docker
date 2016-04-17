# calculator-docker
[![Build Status](https://travis-ci.org/dev-tool-index/calculator-docker.svg?branch=master)](https://travis-ci.org/dev-tool-index/calculator-docker)

This docker contains a web service [calculator-service](https://github.com/dev-tool-index/calculator-service) which is the application example for [Developer Tool Index
](https://www.gitbook.com/book/dev-tool-index/developer-tool-index/details).

## [Dockerfile](https://github.com/dev-tool-index/calculator-docker)

## run
* run mongo first as dependency
> $ docker run --hostname my-mongo --name some-mongo -d -p 27017:27017 -p 28017:28017 mongo:3.2  --rest

* start calculator-service
> $ docker run -p 8090:8090 --link some-mongo:mongodb calculator-service
