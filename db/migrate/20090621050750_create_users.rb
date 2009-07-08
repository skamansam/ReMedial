class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :uname
      t.string :pwd
      t.string :fname
      t.string :mname
      t.string :lname
      t.string :email
      t.string :homepage
      t.string :address1
      t.string :address2
      t.string :country
      t.string :state
      t.string :city
      t.string :zip
      t.string :phone
      t.string :cell
      t.string :avatar
      t.string :group
      t.string :dir
      t.string :permission
      t.string :theme
      t.datetime :created

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
