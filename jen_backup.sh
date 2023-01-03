#!/bin/bash

#we need to copy the jenkins files to backup folder
cp -rf /var/lib/jenkins/*  /root/jenkins_backup/
cd /root/jenkins_backup
rm -rf caches/
token="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"
username="madhupk963"
repoName="jenkins_backup"
timestamp=`date`
git remote set-url origin https://${token}@github.com/${username}/${repoName}.git
git status
git add .
git commit -m "jenkins backp $timestamp"
git push origin main
