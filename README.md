# README

## HOWTO Install on OSX
1. Install Homebrew
2. Install rbenv: `brew install rbenv ruby-build`
3. Add rbenv to bash so that it loads every time you open a terminal
   ```
   echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
   source ~/.bash_profile
   ```
4. Install Ruby
   ```
   rbenv install 2.3.3
   rbenv global 2.3.3
   ```
   Additional ino on ruby install https://gorails.com/setup/osx/10.12-sierra
5. Check ruby version: `ruby -v`, should be 2.3.3
6. Install postgres `brew install postgresql`
7. To have launchd start postgresql at login:
   `ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents`
8. Then to load postgresql now:
   `launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist`
9. By default the postgresql user is your current OS X username with no password. For example, my OS X user is named chris so I can login to postgresql with that username.
*Project uses postgres/postgres in development mode*
10. Install dependencies `bundle install`
11. Initialize db with `rake db:create`
12. Initialize spree `rails g spree:install`
13. Start server with `bundle exec rails s`
14. Follow http://localhost:3000 for landing pages
15. Follow http://localhost:3000/shop for spree frontend

## HOWTO Customize Spree
1. To customize html templates refer to files in app/views/spree/
2. To customize scss refer to vendor/assets/stylesheets/spree/frontend/frontend_bootstrap.css.scss . Additional: https://github.com/spree/spree/tree/master/frontend ,
Full list of scss variables : https://github.com/twbs/bootstrap-sass/blob/master/assets/stylesheets/bootstrap/_variables.scss
3. To customize spree coffee script refer to vendor/assets/javascripts/spree/frontend
