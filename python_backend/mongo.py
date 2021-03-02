# import pandas as pd
import pymongo
import dns
import os

f = open("uri.txt", "r")
uri = f.read()
f.close()
# docs https://docs.mongodb.com/manual/reference/method/db.collection.find/
# https://docs.mongodb.com/drivers/python/
client = pymongo.MongoClient(uri)
db = client.get_database("Env")

# new_item= {
#     'name': 'lentils',
#     'carbon': 0.9,
#     'serving_kg': 1,
#     'serving_lbs': 2.20462
# }
# db['Info'].insert_one(new_item)

def get_carbon(something):
	want=db['Info'].find_one({'name':something}) # to locate the entry

	return want['carbon'] # get name at said entry
print(get_carbon("cheese"))