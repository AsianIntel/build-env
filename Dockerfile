FROM debian:buster
RUN apt-get update -y && apt-get install -y curl redis-server gcc make cmake
RUN curl -sSf https://sh.rustup.rs | sh -s -- --profile default --default-toolchain nightly -y
ENV PATH="/root/.cargo/bin:${PATH}"