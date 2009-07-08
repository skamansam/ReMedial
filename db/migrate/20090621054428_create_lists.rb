class CreateLists < ActiveRecord::Migration
  def self.up
    create_table :lists do |t|
      t.integer :owner
      t.string :title
      t.text :body
      t.integer :parent
      t.integer :completed
      t.string :attachment
      t.string :permission

      t.timestamps
    end
  end

  def self.down
    drop_table :lists
  end
end
