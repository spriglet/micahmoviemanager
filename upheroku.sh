up#!/bin/bash         
heroku login
heroku run rake db:migrate --app micahmoviemanager