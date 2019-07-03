FROM jenkins/jnlp-slave
USER root
RUN apt install -y build-essential
RUN apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common curl
RUN echo 'deb https://download.docker.com/linux/debian jessie stable' > /etc/apt/sources.list.d/jessie-docker.list
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt update
RUN apt install -y docker-ce
USER jenkins
