# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version  
2.4.2

* Rail version  
5.1.4

* System dependencies  
Node.js 8.9  
React  
ES6  

* Configuration

* Database creation  
```
$ docker-compose run server rails db:create
```

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

#### webpack用のdev-serverを立ち上げ  
```
$ docker-compose run server bin/webpack-dev-server
```

#### コンテナをビルド  
```
$ docker-compose build
```

#### コンテナの一斉起動
```
$ docker-compose up
```

#### コンテナの停止
```
$ docker-compose down
```

#### webpack用のdev-serverを立ち上げ
```
$ docker-compose run server bin/webpack-dev-server
```

#### dockerで立ち上げたコンテナにログイン
```
$ docker-compose exec server /bin/bash
```
