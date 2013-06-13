#!/bin/sh
SHELL=/bin/bash

# account
username=''
password=''
repository=''

# repository
url='github.com'
date=`date '+%Y-%m-%d'`
branch='update-gemfile-${date}'

mv bundle_config .bundle/config
git clone https://${username}:${password}@${url}/${repository}.git repo
cd repo
git checkout -b ${branch}
bundle update
git add Gemfile.lock
git commit -m 'update Gemfile'
git push origin ${branch}
hub pull-request  ${branch}
