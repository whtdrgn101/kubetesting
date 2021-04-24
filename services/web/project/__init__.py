from flask import Flask, make_response, send_from_directory
import json

app = Flask(__name__)
app.config.from_object("project.config.Config")

@app.route("/")
def hello():
    response = make_response( json.dumps({"respones": "Hello from Python!", "version":"1.0.7"}), 200)
    response.headers["Content-Type"] = "application/json"
    return response

@app.route("/static/<path:filename>")
def staticfiles(filename):
    return send_from_directory(app.config["STATIC_FOLDER"], filename)