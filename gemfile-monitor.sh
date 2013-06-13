#!/bin/sh
SHELL=/bin/bash

# monitor github repository
repository='' # example. git@github.com:camelmasa/animate-rails.git

# repository
date=`date '+%Y-%m-%d'`
branch="update-gemfile-${date}"

mv bundle_config .bundle/config
git clone ${repository} repo
cd repo
git checkout -b ${branch}
bundle update
git add Gemfile.lock
git commit -m 'update Gemfile'
git push origin ${branch}
hub pull-request  ${branch}
