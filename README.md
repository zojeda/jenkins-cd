# Jenkins instance with Continuous Delivery plugins from CloudBees
## Pipeline + Docker

https://go.cloudbees.com/docs/cloudbees-documentation/cje-user-guide/chapter-docker-workflow.html



```Bash
$ docker volume create --name jenkins-volume
$ docker run -d --name proteus-jenkins -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins-volume:/var/jenkins_home zojeda/jenkins-ci-pipeline
```

