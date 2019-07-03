FROM jenkins/jnlp-slave
USER root
RUN apt install -y build-essential
RUN sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
RUN apt install -y docker-ce-cli
USER jenkins
