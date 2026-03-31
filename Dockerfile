FROM ubuntu:noble-20260217

RUN apt-get update && apt-get install -y \
    curl \
    git

RUN curl -fsSL https://gh.io/copilot-install | bash

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
