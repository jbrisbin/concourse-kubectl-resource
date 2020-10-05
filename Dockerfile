FROM alpine

ARG KUBECTL_VERSION=1.18.9

RUN apk add jq curl && \
    curl -sLO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl && \
    mkdir -p /opt/resource

COPY check /opt/resource
COPY in /opt/resource
COPY out /opt/resource

RUN mkdir -p .kube

RUN chmod a+x /opt/resource/*
