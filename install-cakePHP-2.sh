#!/usr/bin/env bash
#change to another name if you want
ProjectName="NewProject"

svn export https://github.com/undologic/updateCase-Docker-PHP/trunk/. $ProjectName/.
curl -L -o cakephp2.zip https://github.com/cakephp/cakephp/archive/2.x.zip
unzip cakephp2.zip
mv cakephp-2.x/ $ProjectName/back-end/
rm cakephp2.zip