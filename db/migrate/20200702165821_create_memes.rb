class CreateMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :memes do |t|
      t.string :name
      t.string :url
      t.string :category
      t.integer :likes

      t.timestamps
    end
  end
end
