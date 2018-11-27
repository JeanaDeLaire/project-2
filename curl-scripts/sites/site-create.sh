#!/bin/bash

 curl "http://localhost:4741/sites" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "site": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "keywords": "'"${KEYWORDS}"'"
    }
  }'

echo
