#!/usr/bin/env bash
set -e

envsubst < /etc/shadowsocks/ss-server.json.template > /etc/shadowsocks/ss-server.json

if [ "${1#-}" != "$1" ]; then
    set -- ssserver -c /etc/shadowsocks/ss-server.json "$@"
fi

exec "$@"
