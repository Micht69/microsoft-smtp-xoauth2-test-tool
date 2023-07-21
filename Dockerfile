FROM rust

# Used for debug just in case
RUN apt update && \
    apt install -y vim git && \
    apt clean

WORKDIR /app
COPY . .
# Prebuild the app
RUN cargo build

EXPOSE 8080
