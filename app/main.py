import secrets
from flask import Flask, request, jsonify


app = Flask(__name__)

@app.route("/v1/tc", methods=['GET'])
def tokencreate():
    client = request.args.get("client")
    return jsonify({"token": secrets.token_hex(16), "client": client})


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)