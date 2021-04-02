#! /bin/bash

docker run --rm -p 8888:8888 --user root -e NB_USER=ryanfeudy -e JUPYTER_ENABLE_LAB=yes -e CHOWN_HOME=yes -v "$PWD":/home/ryanfeudy/work jupyter-server-capstone
