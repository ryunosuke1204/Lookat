# README


* アプリ名 : Lookat

* 内容 : コーディネートを投稿できるアプリ

* 目的 : 洋服でコミュニティを広げ繋げる。

ーーーーーーーーーーーーーーーーーーーーーーー

## users テーブル

| Column             | Type   | Options                |
| ------------------ | ------ | -----------            |
| email              | string | unique: true,null:fales|
| encrypted_password | string | null: false            |
| nickname           | string | null: false            |
| first_name         | string | null: false            |
| last_name          | string | null: false            |

## Association

has_many :favorite
has_many :relationship

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
belongs_to :comment

## comments テーブル
| Column       | Type      | Options                          |
| ----------   | ----------| ---------------------------------|
| user         |references | null: false, foreign_key: true   |
| post         |references | null: false, foreign_key: true   |
| content      |references | null: false                      |
## Association
belongs_to :user
belongs_to :post

## favorites テーブル

| Column     | Type      | Options                           |
| ---------- | ----------| ----------------------------------|
| user_id    |references | null: false, foreign_key: true    |
| item_id    |references | null: false, foreign_key: true    |
## Association
belongs_to :user
belongs_to :item

## relationships テーブル
| Column       | Type      | Options                          |
| ----------   | ----------| ---------------------------------|
| user_id      |references | null: false, foreign_key: true   |
| follow_id    |references | null: false, foreign_key: true   |
## Association
belongs_to :user
belongs_to :follow,class_name:"User"






