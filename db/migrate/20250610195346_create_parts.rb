class CreateParts < ActiveRecord::Migration[8.0]
  def change
    create_table :parts do |t|
      t.integer :number
      t.string :title

      t.timestamps
    end
    add_index :parts, :number, unique: true
  end
end
