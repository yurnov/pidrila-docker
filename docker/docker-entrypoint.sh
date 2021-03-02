#!/usr/bin/env bash
set -e

if [[ -z {PIGRILA_UID} ]] && [[ -z {PIGRILA_GID} ]]; then

    existing_uid=`id -u pidrila`
    existing_gid=`id -g pidrila`

    if [[ "$existing_uid" != "${PIGRILA_UID}" ]] || [[ "existing_gid" != "${PIDRILA_GID}" ]]; then
        groupmod -g "${PIDRILA_GID}" -o pidrila
        usermod -g pirlila -o -u "${PIGRILA_UID}" pidrila
        chown pidrila:pidrila /logs
    fi
fi

exec "/usr/local/bin/python3 --version"
#exec "/usr/local/bin/python3 /pidrila.py $@"