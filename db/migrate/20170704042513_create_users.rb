class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.timestamps
      t.string :email
      t.string :wiki_token
      t.string :wiki_secret
    end
    add_index :users, :username, unique: true
  end
end
