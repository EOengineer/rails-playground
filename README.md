# README

This README walks you through the setup of the Rails Playground.

To get started:

* Install [Docker Desktop](https://www.docker.com/products/docker-desktop)

* cd into this project directory

* Run ```docker-compose build``` to build the containers.

* Run ```docker-compose run web rails db:create``` to create the database

* Run ```docker-compose run web rails db:migrate``` to run database migrations

* It may be necessary to run ```docker-compose run web rails webpacker:install``` to install front end dependencies if you receive a webpacker exception when visiting the home page

* visit [localhost:3001](localhost:3001)

* any additional rails commands that would typically be run locally (such as generator commands) can be run with: ```docker-compose run web your-command-here```

* if you have a local redis-server instance running, you may need to temporarily disable that instance for the docker orchestration to complete.
