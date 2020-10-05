FROM ubuntu

ARG KUBECTL_VERSION=1.18.9

RUN apk add jq curl && \
    curl -sLO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl && \
    mkdir -p /opt/resource

RUN mkdir -p /root/.kube
