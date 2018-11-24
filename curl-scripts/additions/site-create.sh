#!/bin/bash

 curl "http://localhost:4741/sites" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "site": {
      "name": "'"${NAME}"'",
      "att_type": "'"${ATT_TYPE}"'",
      "level_of_difficulty": "'"${DIFFICULTY}"'",
      "parking": "'"${PARKING}"'",
      "cost": "'"${COST}"'",
      "location": "'"${LOCATION}"'",
      "length_of_trail: "'"${LENGTH}"'",
      "description": "'"${DESCRIPTION}"'",
      "directions": "'"${DIRECTIONS}"'"
    }
  }'

echo
