FROM jenkins/jenkins:latest

USER root

RUN apt-get update && \
    apt-get install -y g++ \
                    libgtest-dev \
                    cmake \
                    vim 

RUN cd /usr/src/gtest && \
    cmake CMakeLists.txt && \
    make && \
    cp *.a /usr/lib

USER jenkins