#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/blogs"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "blog": {
      "title": "First Blog",
      "content": "Blah",
      "user_id": "1"
    }
  }'
echo
