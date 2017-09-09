# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

``` Shell
bundle exec rake db:create
rails g spree:install --migrate=false --sample=false --seed=false
bundle exec rake railties:install:migrations
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rake spree_sample:load
bin/rails g solidus_i18n:install
rails g solidus_editor:install
```

For heroku:
``` Shell
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rake spree_sample:load
```
