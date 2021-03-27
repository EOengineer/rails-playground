# README

This project is intended to provide a fully transportable development environment that can be run on any system with a working Docker installation.  Additional links and resources are provided in this README to support those new to programming.

Provided Architecture:
* Postgresql database
* Ruby Runtime
* Ruby on Rails Web Application
* Sidekiq queueing system for async processing

What you will need:
* [Docker Desktop](https://www.docker.com/products/docker-desktop)
* A [Code Editor][https://code.visualstudio.com/]
* A command line terminal (one is included as part of visual studio code) and a basic understanding of [POSIX commands][http://web.cs.ucla.edu/~miryung/teaching/EE461L-Spring2012/labs/posix.html]
* Patience and Persistence

To get the environment running started:

* Make sure Docker Desktop is installed and running.

* cd into this project directory.

* Run ```docker-compose build``` to build the containers.

* Run ```docker-compose run web rails db:create``` to create the database

* Run ```docker-compose run web rails db:migrate``` to run database migrations

* It may be necessary to run ```docker-compose run web rails webpacker:install``` to install front end dependencies if you receive a webpacker exception when visiting the home page

* visit [localhost:3001](localhost:3001)

* any additional rails commands that would typically be run locally (such as generator commands) can be run with: ```docker-compose run web your-command-here```

* if you have a local redis-server instance running, you may need to temporarily disable that instance for the docker orchestration to complete.

Additional Resources:
* [Learn Ruby with RubyMonk Ruby Primer][http://rubymonk.com/learning/books/1-ruby-primer]
* [Getting started with Rails][https://guides.rubyonrails.org/getting_started.html]
