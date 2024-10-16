FROM registry.access.redhat.com/ubi9/ubi:latest

RUN dnf install -y python3 python3-pip && \
    pip install mkdocs mkdocs-terminal
