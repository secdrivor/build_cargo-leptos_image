FROM rust:latest

RUN apt-get update && apt-get install -y \
    libssl-dev pkg-config build-essential curl

# Install Trunk first
RUN cargo install trunk

# Then install cargo-leptos with locked dependencies
RUN cargo install --locked cargo-leptos

CMD ["trunk", "--help"]
