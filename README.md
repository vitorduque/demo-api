# Demo-api

### Usage

Clone it

    git clone https://github.com/vitorduque/demo-api.git

Turn it on:

    docker-compose up

Prepare your database if needed

    docker-compose exec web rake db:create db:migrate db:seed

Create a deploy:

    curl -XPOST localhost:3000/deploys -H "Content-Type: application/json" -d '{"feature": "Some useful feature created by some awesome developer :D", "version": "0.0.4", "responsible": "Mondingnas Burrwhit", "status": true}'


Retrieve all deploys:

    curl -XGET localhost:3000/deploys



## To-do list

* [x] Kickoff
* [x] Use docker-compose
* [x] Create deploys endpoint
* [ ] Generate CSV report
* [ ] Improve tutorial
