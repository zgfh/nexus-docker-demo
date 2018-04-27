FROM daocloud.io/maven:3.2-jdk-8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV repository http://192.168.4.170:30696
ENV version 1.0.0
ENV mirror_repository ${repository}/content/repositories/central

ENV staging_repository ${repository}/content/repositories/staging
ENV snapshots_repository ${repository}/content/repositories/snapshots

ENV repository_username deployment
ENV repository_password deployment123

ADD settings.xml ${MAVEN_HOME}/conf/settings.xml
ADD pom.xml pom.xml
ADD . /usr/src/app
RUN mvn deploy -X
