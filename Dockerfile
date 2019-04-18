FROM circleci/openjdk:8u171-jdk-stretch

CMD sudo apt update                   
CMD sudo apt-get install imagemagick

# Install Node, npm, and yarn

CMD curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash
CMD sudo apt-get install -y nodejs
CMD sudo npm install -g npm@latest
CMD curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
CMD sudo apt-get update && sudo apt-get install yarn 

# Install AWS CLI
CMD sudo apt-get install python-dev
CMD sudo apt-get install python-pip
CMD sudo pip install awscli
