#!/bin/bash

curl "http://localhost:4741/sites" \
  --include \
  --request DELETE "http://localhost:4741/sites/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
