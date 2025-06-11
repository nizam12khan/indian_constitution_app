class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.integer :number, null: false
      t.text :content, null: false

      t.timestamps
    end
    add_index :articles, :number, unique: true
  end
end
