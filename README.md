<p align="center">
  # 学生用チャットアプリ
</p>

# Name

I Teach
学生のための自宅学習用チャットアプリ
 
# Features
 
利用者がチャットを使って学習に関する質問をすることができる。
アプリが簡潔で使いやすい。
 
# Requirement
 
* haml-rails
* font-awesome-sass
* devise
* carrierwave
* unicorn
 
# Author
 
* 作成者 陣内康輔
* E-mail　kousuke1325@icloud.com

# I Teach DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique:true|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :messages
- has_one :teacher

## teachersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|explain|text|null: false|
|user_id|integer|null:false, foreign_key: true|
### Association
- has_one :user
- has_many :messages

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|user_id|integer|null: false, foreign_key: true|
|teacher_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :teacher



