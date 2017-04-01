#!/bin/sh

python /app/sockspot.py >/dev/null 2>&1

echo [
cat /app/proxies.txt  | sed -e 's/\:[0-9][0-9][0-9][0-9]//g' -e 's/^/\{\"ip\": \"/' -e 's/$/\", \"type\": \"5\", \"reason\": \"Known Proxy\"\},/'
echo {}]


