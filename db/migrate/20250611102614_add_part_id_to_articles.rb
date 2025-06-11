class AddPartIdToArticles < ActiveRecord::Migration[8.0]
  def change
    add_reference :articles, :part, null: false, foreign_key: true
  end
end
