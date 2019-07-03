FROM jenkins/jnlp-slave
USER root
RUN apt install -y build-essential
USER jenkins
