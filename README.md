# ELK && Zipkin

## Quick Start

Start everything by running `docker-compose up -d` in the `bootstrap/` directory, then access Kibana at [localhost:5601](http://localhost:5601) and Zipkin at [localhost:9411](http://localhost:9411).

## Contributing

PRs are welcome ! When contributing, make sure you force build and restart everything with `docker-compose down && docker-compose build --no-cache && docker-compose up`.
