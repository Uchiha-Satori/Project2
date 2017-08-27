#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/blogs"
curl "${API}${URL_PATH}/1" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
--data '{
  "blog": {
    "title": "UPDATE/PATCH First Blog",
    "content": " UPDATE/PATCH Blah",
    "user_id": "1"
  }
}'

echo
