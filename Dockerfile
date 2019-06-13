from jenkinsci/blueocean

#lnstall kubectl
USER root
run curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
run chmod +x ./kubectl
run mv ./kubectl /usr/local/bin/kubectil


