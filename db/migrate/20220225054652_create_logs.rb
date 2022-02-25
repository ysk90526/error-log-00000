class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.string :title,       null: false
      t.text :objective,     null: false
      t.text :error_content, null: false
      t.text :research,      null: false
      t.text :cause,         null: false
      t.text :solution,      null: false
      t.text :reference,     null: false
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
