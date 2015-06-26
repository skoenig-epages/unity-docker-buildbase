FROM java:8-jdk
MAINTAINER Christian Hoffmeister <mail@choffmeister.de>

WORKDIR /tmp

ENV GRADLE_VERSION=2.4
ENV NODE_VERSION=0.12.5

RUN \
  wget --quiet https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip && \
  unzip -q gradle-${GRADLE_VERSION}-bin.zip && \
  rm gradle-${GRADLE_VERSION}-bin.zip && \
  mv gradle-${GRADLE_VERSION} /opt/gradle && \
  ln -s /opt/gradle/bin/gradle /usr/local/bin/gradle

RUN \
  wget --quiet http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz && \
  tar xfz node-v${NODE_VERSION}-linux-x64.tar.gz && \
  rm node-v${NODE_VERSION}-linux-x64.tar.gz && \
  mv node-v${NODE_VERSION}-linux-x64 /opt/node && \
  ln -s /opt/node/bin/node /usr/local/bin/node && \
  ln -s /opt/node/bin/npm /usr/local/bin/npm
