FROM ruby:2.4.2

# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get update -qq
RUN apt-get install -y build-essential 
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install -g n
RUN n 8.9.0
#RUN apt-get purge nodejs
#RUN apt-get purge npm
RUN apt-get autoremove
RUN bundle update

# ワーキングディレクトリの設定
RUN mkdir /mreminder
WORKDIR /mreminder

# gemfileを追加する
ADD Gemfile /mreminder/Gemfile
ADD Gemfile.lock /mreminder/Gemfile.lock

# gemfileのinstall
RUN bundle install
ADD . /mreminder
