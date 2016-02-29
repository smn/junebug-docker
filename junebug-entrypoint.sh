#!/bin/bash -e

jb --port 8080 \
    --redis-host ${REDIS_HOST:-127.0.01} \
    --redis-port ${REDIS_PORT:-6379} \
    --redis-db ${REDIS_DB:-1} \
    --amqp-host ${AMQP_HOST:-127.0.0.1} \
    --amqp-vhost ${AMQP_VHOST:-/guest} \
    --amqp-port ${AMQP_PORT:-5672} \
    --amqp-user ${AMQP_USER:-guest} \
    --amqp-password ${AMQP_PASSWORD:-guest}
