#!/bin/bash

#启动ssh
/usr/sbin/sshd -D &
exec "$@"

