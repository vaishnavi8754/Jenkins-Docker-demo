from flask import Flask
mainapp = Flask(__name__)
@mainapp.route("/")
def hello():
	return "Hello, World! Running inside Docker!"

if __name__=="__main__":
	mainapp.run(host="0.0.0.0",port=5000)
