FROM alpine

MAINTAINER Jukka Aho <ahojukka5@gmail.com>

RUN apk update
RUN apk add curl
RUN apk add bash
RUN apk add vim
RUN apk add nodejs
RUN apk add python3

# Install CLI tools

# Install pip
RUN curl https://bootstrap.pypa.io/get-pip.py | python3

# Install howdoi
RUN apk add python3-dev
RUN apk add libxml2 libxml2-dev
RUN apk add libxslt libxslt-dev
RUN apk add gcc
RUN apk add musl-dev
RUN pip install howdoi

# Install Heroku CLI
RUN curl https://cli-assets.heroku.com/install.sh | sh

# Install IBM Cloud CLI
RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh

# Install npm
RUN apk add npm

# Install CloudFlare CLI
RUN npm install -g cloudflare-cli

# Install Firebase CLI
RUN npm install -g firebase

# Install DigitalOcean CLI
WORKDIR /wrk
RUN wget https://github.com/digitalocean/doctl/releases/download/v1.54.0/doctl-1.54.0-linux-amd64.tar.gz
RUN tar xf doctl-1.54.0-linux-amd64.tar.gz
RUN mv doctl /usr/local/bin

# Install git
RUN apk add git
# Install GitHub CLI
RUN wget https://github.com/cli/cli/releases/download/v1.4.0/gh_1.4.0_linux_386.tar.gz
RUN tar zxvf gh_1.4.0_linux_386.tar.gz
RUN mv gh_1.4.0_linux_386/bin/gh /usr/local/bin/

# Install ruby
RUN apk add ruby ruby-dev
RUN apk add make
# Install Travis-CI CLI
RUN gem install travis

# Install ElasticBeans CLI
RUN apk add libffi libffi-dev
RUN apk add openssl-dev
RUN pip install awsebcli

# Install Amazon Amplify CLI
RUN npm install -g @aws-amplify/cli

# Run the image as a non-root user
RUN adduser -D -s /bin/bash -h /wrk jukka
# USER jukka

CMD ["/bin/bash"]
