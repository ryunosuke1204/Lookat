# README


* アプリ名 : Lookat

* 内容 : コーディネートを投稿できるアプリ

* 目的 :他の人のコーディネートを参考にできる

ーーーーーーーーーーーーーーーーーーーーーーー

## users テーブル

| Column             | Type   | Options                |
| ------------------ | ------ | -----------            |
| email              | string | unique: true,null:fales|
| encrypted_password | string | null: false            |
| name           | string | null: false            |
| first_name         | string | null: false            |
| last_name          | string | null: false            |

## Association

has_many :favorite

## posts　テーブル
| Column             | Type      |Options                     |
| ----------         | ----------| ---------------------------|
| content            | text      | null: false                |
| headwear           | string    |                            |
| tops               | string    | null: false                |
| outer              | string    |                            |
| bottoms            | string    | null: false                |
| shoes              | string    | null: false                |
| accessories        | string    |                            |
| user               |references | null: false, foreign_key: true|


## Association
belongs_to :user

## favorites テーブル

| Column     | Type      | Options                           |
| ---------- | ----------| ----------------------------------|
| user       |references | null: false, foreign_key: true    |
| post       |references | null: false, foreign_key: true    |
## Association
belongs_to :user
belongs_to :item







