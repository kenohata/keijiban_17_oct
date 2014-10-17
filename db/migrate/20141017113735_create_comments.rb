class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :board_id
      t.string :from
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
