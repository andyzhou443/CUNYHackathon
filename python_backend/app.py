from flask import Flask
from flask_restful import reqparse, abort, Api, Resource
from flask_ngrok import run_with_ngrok
import mongo


app = Flask(__name__)

api = Api(app)
run_with_ngrok(app)

class GetData(Resource):
	def get(self,desired):
		return {"carbon emission per 1kg" : mongo.get_carbon(desired)}


api.add_resource(GetData,"/<string:desired>")

if __name__ == "__main__":
	app.run()