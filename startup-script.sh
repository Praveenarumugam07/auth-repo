#! /bin/bash
sudo apt update
sudo apt install -y python3-pip git

# Clone your repo to get app.py and requirements.txt
cd /home
git clone https://github.com/Praveenarumugam07/auth-repo.git
cd auth-repo

# Install dependencies
pip3 install -r requirements.txt

# Run the app in background
nohup python3 app.py &
