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

RUN mkdir -p /var/jenkins_home/googleTest

COPY src/ /var/jenkins_home/googleTest/

RUN chown -R jenkins:jenkins /var/jenkins_home/googleTest/

USER jenkins