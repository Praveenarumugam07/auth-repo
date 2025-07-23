#! /bin/bash
sudo apt update
sudo apt install -y python3-pip
pip3 install flask
echo 'from flask import Flask
app = Flask(__name__)
@app.route("/")
def hello():
    return "Hello from GitHub Actions and GCP VM!"
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)' > app.py
nohup python3 app.py &
