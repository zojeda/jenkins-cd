FROM jenkins
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
USER root
RUN curl -fsSL https://get.docker.com/ | sh    
#USER jenkins