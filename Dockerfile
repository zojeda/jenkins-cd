FROM jenkins
USER root

# Minimum for docker-workflow. Docker server does not accept a client newer than itself (older is OK).
RUN wget -O /usr/bin/docker --no-check-certificate https://get.docker.com/builds/Linux/x86_64/docker-1.10.0
RUN chmod a+x /usr/bin/docker


COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
