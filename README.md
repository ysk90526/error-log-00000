# テーブル設計

## users テーブル

| Column            | Type   | Options       |
| ----------------- | ------ | ------------- |
| email             | string | null: false   |
| encryped_password | string | null: false   |
| name              | string | null: false   |
| profile           | text   |               |
| occupation        | text   |               |
| position          | text   |               |

### Association

- has_many :memos
- has_many :comments

## logs テーブル

| Column        | Type       | Options                      |
| ------------- | ---------- | ---------------------------- |
| title         | string     | null:false                   |
| objective     | text       | null:false                   |
| error_content | text       | null:false                   |
| research      | text       | null:false                   |
| cause         | text       | null:false                   |
| solution      | text       | null:false                   |
| reference     | text       | null:false                   |
| user          | references | null:false, foreign_key:true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column  | Type       | Options                      |
| ------- | ---------- | ---------------------------- |
| content | text       | null:false                   |
| memo    | references | null:false, foreign_key:true |
| user    | references | null:false, foreign_key:true |

### Association

belongs_to :user
belongs_to :memo
