#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "blog": {
      "title": "Comment 1",
      "content": "I am Awesome",
      "blog_id": "1"
      "user_id": "1"
    }
  }'
echo
