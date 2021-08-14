FROM openjdk:8-jdk

# java configurations
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ENV DISPLAY=:0

# install sbt
RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | tee /etc/apt/sources.list.d/sbt.list
RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | tee /etc/apt/sources.list.d/sbt_old.list
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update
# RUN apt-get install sbt
RUN apt-get install sbt -y

# set working directory
WORKDIR /usr/app

# copy java files to container]  
COPY ./app /usr/app/


# create user with non root privilegies
RUN useradd -u 1000 scala
RUN mkdir /home/scala
RUN chown -R scala /home/scala

USER 1000



