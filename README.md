# エコマネーアプリケーション

これは、エコマネーアプリケーションです。

Ruby on Rails 4.2.1で開発しています。

## インストール

* ER図やクラス図を生成するのにgraphvizを使用しており、事前にインストールが必要です。使わない場合はGemfileの`rails-erd`と`railroady`のgemをコメントアウトします。

```
git clone https://github.com/akokubo/eco-money.git
cd eco-money
bundle install --without production
bundle exec rake db:migrate
bundle exec rake db:seed
rails server
```

Herokuで稼働させるには以下のようにします。
```
heroku create アプリケーション名
git push heroku master
heroku config:add TZ=Asia/Tokyo
heroku addons:create sendgrid:starter
heroku config:add MAILER_HOST="https://アプリケーション名.herokuapp.com/"
heroku config:add MAILER_SENDER="e-mailアドレス"
heroku run rake db:migrate
heroku run rake db:seed
```

by [Atsushi Kokubo](https://twitter.com/akokubo).
