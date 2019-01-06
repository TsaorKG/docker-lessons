FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y g++ \
                    libgtest-dev \
                    cmake \
                    vim 

RUN cd /usr/src/gtest && \
    cmake CMakeLists.txt && \
    make && \
    cp *.a /usr/lib

COPY src/ /home/

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["./runTests"]