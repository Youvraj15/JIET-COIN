# Use a lightweight base image
FROM debian:bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl build-essential libssl-dev pkg-config nano \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV PATH="/root/.cargo/bin:$PATH"

RUN rustc --version

RUN curl -sSfL https://release.anza.xyz/stable/install | sh \
    && echo 'export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"' >> ~/.bashrc

ENV PATH="/root/.local/share/solana/install/active_release/bin:$PATH"

RUN solana --version

RUN solana config set -ud

WORKDIR /solana-token

CMD ["/bin/bash"]
