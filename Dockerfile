FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /app

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y build-essential protobuf-compiler \
                     python3 python-is-python3 \
                     libprotobuf-dev libcurl4-openssl-dev \
                     libboost-all-dev m4 g++ libssl-dev \
                     libjemalloc-dev

COPY . /app/

RUN ./configure --allow-fetch --fetch protoc
RUN make clean
RUN make -j4
RUN make install

CMD ["build/release/rethinkdb", "--bind", "all"]

