ARG IMAGE_NAME
ARG IMAGE_VERSION

FROM ${IMAGE_NAME}:${IMAGE_VERSION}

WORKDIR /opt/{{project}}

COPY rust-toolchain.toml .
COPY README.md .
COPY Cargo.toml .
COPY src src

RUN cargo build --all-features
