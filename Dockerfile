FROM node:12-stretch
RUN apt-get update \
&&  DEBIAN_FRONTEND=noninteractive apt-get install -y libunwind8 \
&&  apt-get autoclean \
&&  apt-get clean \
&&  apt-get autoremove \
&&  rm -rf /var/lib/apt/lists/*