FROM jenkins/jnlp-slave
USER root
RUN apt install -y build-essential
RUN echo 'deb https://download.docker.com/linux/debian jessie stable' > /etc/apt/sources.list.d/jessie-docker.list
RUN apt update
RUN apt install -y docker-ce-cli
USER jenkins
