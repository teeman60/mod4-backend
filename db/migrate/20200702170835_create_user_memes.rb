class CreateUserMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_memes do |t|
      t.integer :user_id
      t.integer :meme_id

      t.timestamps
    end
  end
end
