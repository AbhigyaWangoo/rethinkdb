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

# Expose the RethinkDB web UI port
EXPOSE 8080

# Expose the RethinkDB driver port
EXPOSE 28015

# Expose the RethinkDB intracluster communication port
EXPOSE 29015

# Set the data directory
VOLUME /data

# Start RethinkDB when the container launches
CMD ["rethinkdb", "--bind", "all"]

