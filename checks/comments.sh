#!/bin/sh
# A comment with HTML markup is stored and served back as sent, unsanitized (the JSON answer
# escapes < and > as < and >).
set -e
id="probe$$"
curl -fsS -H 'Content-Type: application/json' -d "{\"comment\":\"<b>$id</b>\"}" http://api:10017/comments | grep -q success
curl -fsS http://api:10017/comments | grep -qF "\\u003cb\\u003e$id\\u003c/b\\u003e"
