import json
from pprint import pprint

with open('jsons/all_games_fpsl.json') as data_file:
    data = json.load(data_file)

print(data['result'][0]['HomeTeam'])
