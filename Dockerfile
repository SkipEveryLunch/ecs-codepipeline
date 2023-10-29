# ベースとなるイメージを指定
FROM ruby:3.1.2

# 必要なライブラリのインストール
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# ワーキングディレクトリの設定
WORKDIR /myapp

# ホストのGemfileとGemfile.lockをコンテナにコピー
COPY Gemfile* /myapp/

# BundlerでGemをインストール
RUN gem install bundler:2.3.7

# Bundlerでアプリケーションの依存関係をインストール
RUN bundle install

# アプリケーションの全体をコンテナにコピー
COPY . /myapp

# サーバーのポートを開放
EXPOSE 3000

# サーバーを起動するコマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
