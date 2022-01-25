# 訪問介護ステーションスケジュール管理アプリ

# アプリ概要
訪問介護ステーションスタッフの週間スケジュールを管理できるアプリです。
スケジュール機能の他に、患者さんの個人情報管理、コメント機能を搭載しています。

# URL
### ここにURL

ゲストログインボタンからゲストユーザーをしてログイン可能です。

# 作成背景
### 友人からの依頼で受託開発
- スタッフの週間スケジュール管理をホワイトボードで手書きで行っており、患者名のみの記載で訪問場所が記入されていないため、どこに訪問しているかがすぐ分からない。
  - 新患の紹介や急患があった際に、場所が分からないと対応可否をすぐに返答できない。
- 患者さんについてのコメントを手書きで行っている。
  - 記入するのに時間がかかるため、忙しいときは後回しになり記入忘れが生じている。
  
この問題をするため、受託開発という形で作成しました。

# 工夫したこと

# 機能一覧
- ログイン機能
  - deviseでログイン機能を実装
  - ゲストログイン機能を実装
- 管理者ページ
  - スタッフ登録、編集、削除
  - 利用者登録、編集、削除
  - コメントの登録、編集、削除
- ユーザー(スタッフ)機能
  - 
- 利用者(患者さん)機能
  - 新規登録機能
  - 編集機能
  - コメント機能

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
