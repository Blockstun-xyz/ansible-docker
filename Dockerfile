FROM ubuntu:22.04
ENV ANSIBLE_VERSION 9.3.0
RUN apt update; \
    apt install -y gcc python3; \
    apt install -y python3-pip; \
    apt clean all
RUN pip3 install --upgrade pip; \
    pip3 install "ansible==${ANSIBLE_VERSION}"; \
    pip3 install ansible
