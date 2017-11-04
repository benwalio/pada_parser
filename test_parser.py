import json
from pprint import pprint

with open('api_teams_list.json') as data_file:
    data = json.load(data_file)

pprint(data['result'][2]['name'])
