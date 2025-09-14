FROM rust:latest

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libssl-dev pkg-config build-essential curl

# Install cargo-leptos and trunk
RUN cargo install cargo-leptos trunk

# Set working directory
WORKDIR /app

# Default command
CMD ["cargo", "leptos", "--help"]
