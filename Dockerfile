FROM circleci/openjdk:8u171-jdk-stretch

CMD apt update  

# Install Imagemagick
CMD apt-get install imagemagick

# Install Node, npm, and yarn
CMD curl -sL https://deb.nodesource.com/setup_10.x | bash \
  && apt-get install -y nodejs \
  && npm install -g npm@latest \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get install yarn 

# Install AWS CLI
CMD apt-get install python-dev \
  && apt-get install python-pip \
  && pip install awscli
