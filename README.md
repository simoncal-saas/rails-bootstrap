Rails Bootstrap
================

[![Deploy to Heroku]https://rails-bootstrap-simoncal.herokuapp.com/

This application was partially generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).


Ruby on Rails
-------------
This application requires:

- Ruby 2.2.7
- Rails 4.2.0

Getting Started
---------------

Documentation and Support
-------------------------

Issues
-------------
- gem 'google_drive', '~> 2.0' is required, as Google now requires OAuth authorization.
 GoogleDrive.login(Rails.application.secrets.gmail_username, Rails.application.secrets.gmail_password) is no longer supported.

- ruby-2.2.7 is the minimum version supported on Heroku. SimpleForm works fine with Rails 4.2.

- Successfully deployed the app on localhost and Heroku, using service account option for authorization. See https://github.com/gimite/google-drive-ruby/blob/master/doc/authorization.md

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
