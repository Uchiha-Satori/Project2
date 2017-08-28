#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "title": "Comment 1",
      "content": "I am Awesome",
      "blog_id": "1",
      "user_id": "1"
    }
  }'

echo
