#!/bin/bash
curl --include --request PATCH "http://localhost:4741/sites/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  ---data '{
    "site": {
      "name": "'"${NAME}"'",
      "type": "'"${TYPE}"'",
      "level_of_difficulty": "'"${DIFFICULTY}"'",
      "parking": "'"${PARKING}"'",
      "cost": "'"${COST}"'",
      "location": "'"${LOCATION}"'",
      "length_of_trail: "'"${LENGTH}"'",
      "description": "'"${DESCRIPTION}"'",
      "directions": "'"${DIRECTIONS}"'"
    }
  }'
