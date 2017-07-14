# sbt-builder

[![travis](https://api.travis-ci.org/bigcentech/sbt-builder.svg?branch=master)](https://travis-ci.org/bigcentech/sbt-builder)

Docker image to build and publish Scala projects with SBT and Docker. Docker would not run as as daemon inside the container, you would have to define the env variable DOCKER_HOST and point to another running daemon.