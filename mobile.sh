#!/bin/bash -e

  javac BankAppln.java
  java BankAppln



#DOCKERFILE_PATH='docker/Dockerfile'

#docker build --tag dockertest --file $DOCKERFILE_PATH .


#docker rm $(docker ps -a -f status=exited -q)
#docker run --name test --tty dockertest
#docker rm -f -v test

