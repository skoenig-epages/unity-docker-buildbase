FROM java:8-jdk
MAINTAINER Christian Hoffmeister <mail@choffmeister.de>

WORKDIR /tmp

RUN \
  wget --quiet https://services.gradle.org/distributions/gradle-2.2.1-bin.zip && \
  unzip -q gradle-2.2.1-bin.zip && \
  rm gradle-2.2.1-bin.zip && \
  mv gradle-2.2.1 /opt/gradle && \
  ln -s /opt/gradle/bin/gradle /usr/local/bin/gradle

RUN \
  wget --quiet http://nodejs.org/dist/v0.12.2/node-v0.12.2-linux-x64.tar.gz && \
  tar xfz node-v0.12.2-linux-x64.tar.gz && \
  rm node-v0.12.2-linux-x64.tar.gz && \
  mv node-v0.12.2-linux-x64 /opt/node && \
  ln -s /opt/node/bin/node /usr/local/bin/node && \
  ln -s /opt/node/bin/npm /usr/local/bin/npm
