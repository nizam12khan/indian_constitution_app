class AddTitleToArticles < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :title, :string
  end
end
