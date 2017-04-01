#!/bin/sh

python /app/sockspot.py >/dev/null 2>&1

cat /app/proxies.txt  | sed -e 's/\:[0-9][0-9][0-9][0-9]//g' -e 's/^/\<badhost host=\"\*@/' -e 's/$/\" reason=\"Known proxy\"\>/'
