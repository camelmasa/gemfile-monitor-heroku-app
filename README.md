Gemfile monitor heroku app
======================
This heroku app to keep Gemfile always latest.

Install
------

Clone this repository.
```
git clone git@github.com:camelmasa/gemfile-monitor-heroku-app.git
cd gemfile-monitor-heroku-app
```

Update config files.
```
cp ~/.config/hub .config/hub
vi gemfile-monitor.sh  # Edit github username, password, repository
git commit -m 'Update config files'
```

Create heroku app.
```
heroku create heroku-app
git push heroku master
```

Setup
---

Add heroku scheduler addon.
```
heroku addons:add scheduler:standard
heroku addons:open scheduler
```

Add job.
```
sh gemfile-monitor.sh
```

Finish :)
