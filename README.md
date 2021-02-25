# pidrila-docker
Docker image of Python Interactive Deepweb-oriented Rapid Intelligent Link Analyzer

PIDRILA-Docker
=========

Docker image of Python Interactive Deepweb-oriented Rapid Intelligent Link Analyzer

Overview
--------
**PIDRILA**: **P**ython **I**nteractive **D**eepweb-oriented **R**apid **I**ntelligent **L**ink **A**nalyzer is really fast async web path scanner prototype developed by BrightSearch team for all ethical netstalkers.

PIDRILA-Docker is Docker file of PIDRILA released under terms of MIT Licence, be aware that PIDRILA itseft released under terms of GNU General Public License, version 2

Usage
------------

```
docker run --rm -v $(pwd):/logs yurnov/pidrila:latest python3 pidrila.py -u https://google.com -M 256
```

Options
-------

```
Usage: pidrila.py [OPTIONS]

Options:
  -U, --user-agent TEXT           User-Agent
  -t, --timeout INTEGER           Request timeout  [default: 30]
  -A, --auth TEXT                 Basic HTTP auth, i.e. login:password
  -M, --max-connections-per-host INTEGER
                                  How many simultaneous connections should we
                                  open (per each host)  [default: 16]

  -m, --max-connections INTEGER   How many simultaneous connections should we
                                  open  [default: 128]

  -p, --proxy TEXT                Proxy address, like socks5h://127.0.0.1:9050
  -p, --pathlist FILENAME         Path list
  -L, --url-list FILENAME         Target URL list
  -u, --url TEXT                  Target URL, option is mutually exclusive
                                  with url_list  [required]

  -l, --logs DIRECTORY            Destination directory for the logs
  --http-method [head|get]        HTTP method: GET or HEAD  [default: get]
  --help                          Show this message and exit.
```

Features
--------
- Asynchronous
- Can simultaneously scan unlimited number of sites
- Keep-alive support
- HTTP and SOCKS proxy support
- User agent randomization


Usage examples
--------
Scan single clearweb site
```
docker run --rm -v $(pwd):/logs yurnov/pidrila:latest python3 pidrila.py -u http://silenthouse.yoba -M 128
```

Scan single onion site
```
docker run --rm -v $(pwd):/logs yurnov/pidrila:latest python3 pidrila.py -u http://zqktlwi4fecvo6ro.onion -m 16 -M 16 --proxy=socks5h://127.0.0.1:9050
```

Links
-------

Link to PIDRILA GitHub github.com/enemy-submarine/pidrila

License
-------
Dockerfile: MIT Licence
Debian linux: https://www.debian.org/legal/licenses/
License: GNU General Public License, version 2
