FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-full \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /workdir
# RUN mkdir -p /workdir/output

CMD ["/bin/bash", "-lc", "mkdir -p /workdir/output && /usr/bin/lualatex --halt-on-error --output-format=pdf --output-directory=/workdir/output /workdir/main.tex"]