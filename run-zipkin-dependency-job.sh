#!/bin/bash
# Trigger the Zipkin dependency job (necessary to see the dependency graph)
docker-compose exec zipkin ./run-job.sh
