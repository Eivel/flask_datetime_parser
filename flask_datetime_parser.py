from flask import Flask, request
import dateparser
import sys
import rfc3339
app = Flask(__name__)

@app.route('/')
def hello_world():
    parsed = dateparser.parse(request.args.get('input'))
    if parsed is not None:
        return rfc3339.rfc3339(parsed)
    return "not_found"
