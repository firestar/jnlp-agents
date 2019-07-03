FROM jenkins/jnlp-slave
USER root
RUN apt install build-essential
USER jenkins
