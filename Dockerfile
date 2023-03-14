FROM node:14-buster
# downgrade openssl to 1.0 from ubuntu because... stupid autorest needs it! don't try this at home...
RUN printf "deb [trusted=yes] http://security.ubuntu.com/ubuntu xenial-security main" > /etc/apt/sources.list.d/xenial.list
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-downgrades nodejs libunwind8 openssl=1.0.2g-1ubuntu4.20