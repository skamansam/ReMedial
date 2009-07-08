class CreateRatings < ActiveRecord::Migration
  def self.up
    create_table :ratings do |t|
      t.integer :user
      t.integer :media
      t.integer :ranking

      t.timestamps
    end
  end

  def self.down
    drop_table :ratings
  end
end
