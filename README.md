# CLI-tools

CLI-tools combines a lot of different cli tools for a single docker container.
Among that, a very important tool `howdoi` is included to give further
instructions how things are done.

Usage:

Add this to your `.bashrc`:

```bash
alias cli='docker run --rm -it --name cli-tools ahojukka5/cli-tools:latest'
```

After that, try for example `howdoi`:

```text
00:29 $ cli howdoi write hello world in C++
```

Response should be:

```text
#include <iostream.h>      // note the .h suffix
// using namespace std;    // Turbo C++ doesn't implement namespaces

int main()
{
    cout << "Hello, World!";
    return 0;
}
```

Among that, a lot of different cli tools are included:

- Heroku CLI (`cli heroku --help`)
- IBM Cloud CLI (`cli ibmcloud --help`)
- CloudFlare CLI (`cli cfcli --help`)
- DigitalOcean CLI (`cli doctl --help`)
- GitHub CLI (`cli gh --help`)
- Travis-CI CLI (`cli travis --help`)
- Amazon ElasticBeans CLI (`cli eb --help`)
- Amazon Amplify CLI (`cli amplify --help`)

Other things installed

- gcc
- python3
- ruby
- node

Missing your favorite cli tool? Raise an issue!

## Hall of shame

In Hall of Shame, docker history is listed in order of size. The list is
achieved with a command:

```bash
docker history --format "{{.Size}} {{.CreatedBy}}" --no-trunc --human=false ahojukka5/cli-tools:latest | sort -n -r
```

Situation 31.12.2020:

```text
545033149 /bin/sh -c npm install -g @aws-amplify/cli
166029145 /bin/sh -c npm install -g firebase
126302197 /bin/sh -c apk add gcc
100037465 /bin/sh -c pip install awsebcli
68979263 /bin/sh -c pip install howdoi
61133600 /bin/sh -c curl https://cli-assets.heroku.com/install.sh | sh
48247194 /bin/sh -c apk add python3-dev
42622412 /bin/sh -c apk add python3
36800625 /bin/sh -c curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
32285991 /bin/sh -c apk add nodejs
26665913 /bin/sh -c tar xf doctl-1.54.0-linux-amd64.tar.gz
26665913 /bin/sh -c mv doctl /usr/local/bin
26366517 /bin/sh -c apk add vim
19103151 /bin/sh -c curl https://bootstrap.pypa.io/get-pip.py | python3
16804406 /bin/sh -c apk add npm
15828610 /bin/sh -c apk add git
15335386 /bin/sh -c apk add ruby ruby-dev
13681412 /bin/sh -c tar zxvf gh_1.4.0_linux_386.tar.gz
13635584 /bin/sh -c mv gh_1.4.0_linux_386/bin/gh /usr/local/bin/
11912805 /bin/sh -c wget https://github.com/digitalocean/doctl/releases/download/v1.54.0/doctl-1.54.0-linux-amd64.tar.gz
11501891 /bin/sh -c gem install travis
10905055 /bin/sh -c apk add musl-dev
8923160 /bin/sh -c apk add libxml2 libxml2-dev
5577287 /bin/sh -c #(nop) ADD file:ec475c2abb2d46435286b5ae5efacf5b50b1a9e3b6293b69db3c0172b5b9658b in /
5491751 /bin/sh -c apk add libffi libffi-dev
5396014 /bin/sh -c wget https://github.com/cli/cli/releases/download/v1.4.0/gh_1.4.0_linux_386.tar.gz
4142826 /bin/sh -c npm install -g cloudflare-cli
2626456 /bin/sh -c apk add libxslt libxslt-dev
2046502 /bin/sh -c apk add openssl-dev
2023359 /bin/sh -c apk add bash
1781975 /bin/sh -c apk update
1313772 /bin/sh -c apk add curl
842991 /bin/sh -c apk add make
4640 /bin/sh -c adduser -D -s /bin/bash -h /wrk jukka
0 /bin/sh -c #(nop) WORKDIR /wrk
0 /bin/sh -c #(nop)  MAINTAINER Jukka Aho <ahojukka5@gmail.com>
0 /bin/sh -c #(nop)  CMD ["/bin/sh"]
0 /bin/sh -c #(nop)  CMD ["/bin/bash"]
```
