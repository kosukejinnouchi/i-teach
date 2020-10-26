<h1>
<p align="center">
   学生用チャットアプリ 「I Teach」
</p>
</h1>
![image](https://user-images.githubusercontent.com/67685531/97123615-04d86a80-1770-11eb-841c-05ddb15b79bf.png)

# Name

I Teach
学生のための自宅学習用チャットアプリ
自分が勉強したい科目を選んで、そのチャット内で質問ができるサービス
 
# Features
 
利用者がチャットを使って学習に関する質問をすることができる。
アプリが簡潔で使いやすい。

# How to use 
* 最初にトップページからログインする。
* 科目によってチャット部屋が分かれているので、自分の希望する部屋に入る。
* チャット内で質問したり、質問に対する解答もできる。
* 他人同士のチャットも見ることができるので、自分の勉強の参考にすることもできる。
* 新しくチャット部屋を作成し、仲間を募ることもできる。


 
# Requirement
 
* haml-rails
* font-awesome-sass
* devise
* carrierwave
* unicorn
 
# Author
 
* 作成者 陣内康輔
* E-mail　kousuke1325@icloud.com

# Acknowledgments

プログラミングを学習している際に、いくつかのエンジニア専門の質問アプリを使っていました。
その時に、もっと気軽にチャットなどで質問ができるアプリがあればいいと思い、今回は学生のための質問投稿アプリを作ってみました。

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



