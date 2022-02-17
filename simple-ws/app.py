from crypt import methods
from random import randint
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/get-randint", methods=['GET'])
def get_randint():
    n = randint(0,1000)
    ans = {"num":n}
    return jsonify(ans)

if __name__ == '__main__':
    app.run(host='0.0.0.0',debug=True)