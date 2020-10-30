# AceBook

REQUIRED INSTRUCTIONS:

1. Fork this repository to `acebook-teamname` and customize
the below**

[You can find the engineering project outline here.](https://github.com/makersacademy/course/tree/master/engineering_projects/rails)

2. The card wall is here: <please update>

## How to contribute to this project
See [CONTRIBUTING.md](CONTRIBUTING.md)

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

# Database:

## Create database (example):
- Creates the migrate files locally:
> bin/rails g model User email:string password:string first_name:string last_name:string ` 
- creates local database:
> bin/rails db:setup
- Populate local database (add "RAILS_ENV=test", for example, afterwards if one DB has not updated):
> bin/rails db:migrate 

- Then Deploy/push latest changes to Heroku:
> git add/commit/push

> rake run rake db:migrate

## Overview tips:
https://riptutorial.com/ruby-on-rails/example/6137/change-an-existing-column-s-type
> - rake db:migrate:status
> - rake db:migrate VERSION=20080906120000

## Remove depracy warnings

- rvm install 2.5.0
- rvm use 2.5.0
- bundle install (update bundler if needed)
- run rspec to test

## Gems

- For this project, we used different gems:

### Contructing classes

- Devise: this gems facilitated the creation of our User class, where functionalities like create user, sign in, sign up and logout functions were implemented as well as the ability to send emails to users. Configurations must be done in the database and in the general views to adjust to our needs. 

### Styling

- Bootstrap: to start our styling, but some of bootstraps's functionalities were overriden by our own styling
- ImageMagick: to help manipulate images in our app

### Funcionalities

- Act as votable: this was used to be able to like or inlike posts
- Has friendship: help to implement the friendship functionalities


## What is Robot Lizard made of:

- We created our page based on the actual facebook page:
  - Creating User Class
  - Creating Post Class
  - Creating Comment Class
  - Creating Friendship Class
- The classes are interlinked by each relevant ID
 
 
