#!/bin/bash

cd /home/
cmake CMakeLists.txt
make

exec "$@"