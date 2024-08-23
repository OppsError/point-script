#!/bin/bash

url="https://watools.xyz/ankush_apis/yt_booster_2/test/v2.0/increment-points.php"

payload=$(jq -n \
  --arg email "foxggmod@gmail.com" \
  --arg points "180" \
  '{email: $email, points: ($points | tonumber)}')

response=$(curl -s -X POST "$url" \
  -H "User-Agent: okhttp/4.10.0" \
  -H "Accept-Encoding: gzip" \
  -H "Content-Type: application/json; charset=UTF-8" \
  -d "$payload")

echo "$response"
