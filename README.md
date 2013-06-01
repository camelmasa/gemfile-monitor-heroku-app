Gem monitor heroku app
======================
This heroku app to keep Gemfile always latest.

Install
------

Clone this repository.
```
git clone git@github.com:camelmasa/gem-monitor-heroku-app.git
cd gem-monitor-heroku-app
```

Update config files.
```
cp ~/.config/hub .config/hub
vi gem-monitor.sh  # Edit github username, password, repository
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
sh gem-monitor.sh
```

Finish :)
