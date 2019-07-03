FROM jenkins/jnlp-slave
USER root
RUN apt install -y build-essential
RUN apt install -y docker-ce-cli
USER jenkins
