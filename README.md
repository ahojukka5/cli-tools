# CLI-tools

CLI-tools combines a lot of different cli tools for a single docker container.
Among that, a very important tool `howdoi` is included to give further
instructions how things are done.

Usage:

Add this to your `.bashrc`:

```bash
alias cli-tools='docker run --rm -it --name cli-tools ahojukka5/cli-tools:latest'
```

After that, try for example `howdoi`:

```text
00:29 $ cli-tools howdoi write hello world in C++
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

- Heroku CLI (`cli-tools heroku --help`)
- IBM Cloud CLI (`cli-tools ibmcloud --help`)
- CloudFlare CLI (`cli-tools cfcli --help`)
- DigitalOcean CLI (`cli-tools doctl --help`)
- GitHub CLI (`cli-tools gh --help`)
- Travis-CI CLI (`cli-tools travis --help`)
- Amazon ElasticBeans CLI (`cli-tools eb --help`)
- Amazon Amplify CLI (`cli-tools amplify --help`)

Other things installed

- gcc
- python3
- ruby
- node

Missing your favorite cli tool? Raise an issue!
