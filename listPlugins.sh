#!/bin/sh

#read plugin list from a working jenkins with CloudBees+Docker+Pipeline+Plugin -> 
#https://github.com/jenkinsci/docker-workflow-plugin/blob/master/demo/README.md
curl 'http://<user>:<api_token>@<jenkins_host>:<jenkins_port>/pluginManager/api/xml?depth=1&xpath=/*/*/shortName|/*/*/version&wrapper=plugins' | perl -pe 's/.*?<shortName>([\w-]+).*?<version>([^<]+)()(<\/\w+>)+/\1 \2\n/g' > plugins.txt

