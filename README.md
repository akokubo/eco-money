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
rails server
```

by [Atsushi Kokubo](https://twitter.com/akokubo).
