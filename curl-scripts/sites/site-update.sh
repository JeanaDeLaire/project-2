#!/bin/bash
curl --include --request PATCH "http://localhost:4741/sites/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  ---data '{
    "site": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "keywords": "'"${KEYWORDS}"'"
    }
  }'
