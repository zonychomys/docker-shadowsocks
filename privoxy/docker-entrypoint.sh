#!/usr/bin/env bash
set -e

envsubst < /etc/privoxy/config.template > /etc/privoxy/config

if [ "${1#-}" != "$1" ]; then
    set -- privoxy --no-daemon /etc/privoxy/config "$@"
fi

exec "$@"
