FROM daocloud.io/maven:3.2-jdk-8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV registry http://192.168.4.170:30696
ENV staging_registry ${registry}/content/repositories/staging
ENV mirror_registry ${registry}/content/repositories/central

ADD settings.xml ${MAVEN_HOME}/conf/settings.xml
ADD pom.xml pom.xml
ADD . /usr/src/app
RUN mvn deploy -X
