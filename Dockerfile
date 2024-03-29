from jenkinsci/blueocean

#lnstall kubectl
USER root
run curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
run chmod +x ./kubectl
run mv ./kubectl /usr/local/bin/kubectl

#Install Python
RUN apk add --no-cache --update \
    python \
    python-dev \
    py-pip \
    build-base \
    && pip install virtualenv \
    && rm -rf /var/cache/apk/*

RUN apk add tar

#Install gcloud
# Downloading gcloud package
RUN curl -LO https://sdk.cloud.google.com | bash


# Adding the package path to local
ENV PATH $PATH:/usr/local/gcloud/google-cloud-sdk/bin

