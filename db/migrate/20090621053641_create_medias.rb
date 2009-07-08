class CreateMedias < ActiveRecord::Migration
  def self.up
    create_table :medias do |t|
      t.datetime :uploaded
      t.integer :owner
      t.string :type
      t.string :permission
      t.string :path
      t.integer :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :medias
  end
end
