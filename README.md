# Demo-api

### Usage

Turn it on:

    docker-compose up

Create a deploy:

    curl -XPOST localhost:3000/deploys -H "Content-Type: application/json" -d '{"feature": "Some useful feature created by some awesome developer :D", "version": "0.0.4", "responsible": "Mondingnas Burrwhit", "status": true}'


Retrieve all deplys:

    curl -XGET localhost:3000/deploys



## To-do list

* [x] Kickoff
* [x] Use docker-compose
* [x] Create deploys endpoint
* [ ] Generate CSV report
* [ ] Improve tutorial
