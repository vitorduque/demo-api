# Demo-api

### Usage

Clone it

    git clone https://github.com/vitorduque/demo-api.git

Turn it on:

    docker-compose up -d

Prepare your database

    docker-compose exec web rake db:create db:migrate db:seed

To test it

    docker-compose exec web rails test

Create a deploy:

    curl -XPOST localhost:3000/deploys -H "Content-Type: application/json" -d '{"feature": "Some useful feature created by some awesome developer :D", "version": "0.0.4", "responsible": "Mondingnas Burrwhit", "status": true}'


Retrieve all deploys:

    curl -XGET localhost:3000/deploys



## To-do list

* [x] Kickoff
* [x] Use docker-compose
* [x] Create deploys endpoint
* [ ] Generate CSV report
* [x] Improve tutorial
