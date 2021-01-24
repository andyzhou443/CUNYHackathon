import pymongo
from pymongo import MongoClient
import dns

file=open("mongo.txt",'r')
URL=file.read()
client = pymongo.MongoClient(URL)
file.close()
db = client.get_database('sunny_db')
records = db.sunny_record


'''
food_item = [
	{
		'name': 'vegan',
		'CO2_emission': 0
	},
	{
		'name': 'poultry',
		'CO2_emission': 0.507
	},
	 {
		'name': 'beef',
		'CO2_emission': 4.9
	},
	 {
		'name': 'pork',
		'CO2_emission': 0.421
	},
	 {
		'name': 'seafood',
		'CO2_emission': 0.232
	},
	 {
		'name': 'lamb',
		'CO2_emission': 0.043
	},
]

records.insert_many(food_item)

waste_item = [
	{
		'name': 'plastic bag',
		'CO2_emission': 0.033
	},
	{
		'name': 'plastic bottle .5 L',
		'CO2_emission': 0.301
	},
	{
		'name': 'plastic bottle 1.5 L',
		'size': '1.5',
		'CO2_emission': 0.633
	},
	{
		'name': 'plastic bottle 2 L',
		'CO2_emission': 0.965
	},
	{
		'name': 'aluminum can 355',
		'CO2_emission': 0.401
	},
	{
		'name': 'aluminum can 680',
		'CO2_emission': 0.769
	},
]


records.insert_many(waste_item)
'''


food_choice = input('Food: ')
serving_size = float(input('Serving size: '))

food_choices = ['pork', 'vegan', 'poultry', 'beef', 'seafood', 'lamb']


if food_choice in food_choices:
	results_food = records.find({'name':food_choice})
	for result in results_food:
		emission_food = result['CO2_emission']
	
	emission_total = emission_food * serving_size
	print(emission_total)


##WASTE##
waste_choice = input('Waste: ')
amount = float(input('Amount: '))
waste_choices = ['aluminum can 355', 'aluminum can 680', 'plastic bag', 'plastic bottle .5 L', 'plastic bottle 1.5 L', 'plastic bottle 2 L']

if waste_choice in waste_choices:
	results_waste = records.find({'name': waste_choice})
	for result in results_waste:
		emission_waste = result['CO2_emission']
		#print(emission_waste)
	emission_total_waste = emission_waste*amount
	print(emission_total_waste)






