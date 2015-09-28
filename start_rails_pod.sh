#!/usr/bin/env bash






bundle exec rake db:seed
/usr/src/app/bin/rails server -p 8080 -b 0.0.0.0
