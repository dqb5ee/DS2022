#!/opt/homebrew/bin/python3

import os
import json
import requests

GHUSER = os.getenv('GITHUB_USER')

print(GHUSER)

url = 'https://api.github.com/users/{0}/events'.format(GHUSER)

print(url)

response = requests.get(url)

r = json.loads(response.text)

print(r)

for x in r[:5]:
    event = x['type'] + ' :: ' + x['repo']['name']
    print(event)
