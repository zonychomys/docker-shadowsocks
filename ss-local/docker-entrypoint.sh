#!/usr/bin/env bash
set -e

envsubst < /etc/shadowsocks/ss-local.json.template > /etc/shadowsocks/ss-local.json

if [ "${1#-}" != "$1" ]; then
    set -- sslocal -c /etc/shadowsocks/ss-local.json "$@"
fi

exec "$@"
