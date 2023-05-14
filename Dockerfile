FROM amazon/aws-cli:2.11.11

RUN yum update && \
yum -y install unzip && \
yum -y install tar && \
yum -y install gzip && \
yum -y install curl && \
yum -y install less 
# && \
#curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.25.6/2023-01-30/bin/linux/amd64/kubectl && \
#chmod +x ./kubectl && \
#mv ./kubectl /usr/bin/kubectl && \
#curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp && \
#mv /tmp/eksctl /usr/local/bin

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]