class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :from
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
