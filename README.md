CanaryBoard
==============

## Description

This app lets you inform people about the status of services you provide and projects you're responsible for. 
Clean installation has a superuser account with ```admin:admin``` credentials; be sure to change it after first login.

While Rails can be installed on many operating systems, we've include detailed instructions for installing on Ubuntu 12.04 LTS.

## Installation of Rails on Ubuntu 12.04 LTS

You'll need to first download and install Ubuntu 12.04 LTS. To do this, go to http://releases.ubuntu.com/precise/. 

After you've installed Ubunu, follow the instructions below (which were adpated from https://www.digitalocean.com/community/articles/how-to-install-ruby-on-rails-on-ubuntu-12-04-lts-precise-pangolin-with-rvm)

1. ```sudo apt-get update```
1. ```sudo apt-get install curl```
1. ```\curl -L https://get.rvm.io | bash -s stable```
1. ```source ~/.rvm/scripts/rvm```
1. ```rvm requirements```
1. ```rvm install 1.9.3```
1. ```rvm use 1.9.3 --default```
1. ```rvm rubygems current```
1. ```gem install rails```
1. ```sudo apt-get install nodejs```
1. ```sudo apt-get install git```

## Installation of CanaryBoard

1. ```git clone https://github.com/stelligent/canaryboard.git```
1. ```cd canaryboard```
1. ```bundle install```
1. ```bundle exec rake db:setup```
1. ```bundle exec rake db:test:prepare```
1. ```bundle exec rspec spec/```
1. ```bundle exec rake db:test:prepare```
1. ```bundle exec rspec spec/```
1. ```rails s```
