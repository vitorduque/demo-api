# Demo-api

### Running locally

Clone it

    git clone https://github.com/vitorduque/demo-api.git

Turn it on:

    docker-compose up -d

Prepare your database

    docker-compose exec web rake db:create db:migrate db:seed

To test it

    docker-compose exec web rails test

Create a deploy:

    curl -XPOST localhost:3000/deploys -H "Content-Type: application/json" -d '{"feature": "Some useful feature created by some awesome developer :D", "version": "0.0.4", "responsible": "Mondingnas Burrwhit", "status": "Another thing happend"}'


Retrieve all deploys:

    curl -XGET localhost:3000/deploys


## Run the project simulating production environment

Turn it on in production mode:

    RAILS_ENV=production SECRET_KEY_BASE=$(rake secret) docker-compose up -d

Run migration

    docker-compose exec web rake db:migrate RAILS_ENV=production

Create a deploy:

    curl -XPOST localhost:3000/deploys -H "Content-Type: application/json" -d '{"feature": "Some useful feature created by some awesome developer :D", "version": "0.0.4", "responsible": "Mondingnas Burrwhit", "status": "Another thing happend"}'


Retrieve all deploys:

    curl -XGET localhost:3000/deploys

## Running in production

Build it

    docker build -t api .

Run it

    docker run -it -p 3000:3000 -e DB_HOST='your_prod_host' -e DB_USER='your_prod_user' -e DB_PASS='your_prod_pass' -e RAILS_ENV=production -e SECRET_KEY_BASE=$(rake secret) -d api

## To-do list

* [x] Kickoff
* [x] Use docker-compose
* [x] Create deploys endpoint
* [x] Improve tutorial
* [x] Production ready

