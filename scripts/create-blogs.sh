#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/blogs"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "blog": {
      "title": "First Blog",
      "content": "Blah",
      "user_id": "1"
    }
  }'

echo
