FROM ruby:2.4.2

# set environment variables
ENV LANG C.UTF-8
ENV ROOT_PATH /mreminder

# install essential libraries
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev vim g++ build-essential

# install npm
RUN apt-get install -y npm

# install node.js
RUN npm install -g n
RUN n 8.9.0

# install yarn
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn
RUN apt-get install -y zlib1g-dev


# move to root
RUN mkdir $ROOT_PATH
WORKDIR $ROOT_PATH

# bundle install
ADD Gemfile $ROOT_PATH/Gemfile
ADD Gemfile.lock $ROOT_PATH/Gemfile.lock
RUN bundle update
RUN bundle install --path vendor/bundle
RUN bundle update libv8
RUN bundle update i18n

ADD . $ROOT_PATH
