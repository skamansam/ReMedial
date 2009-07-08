# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090622035420) do

  create_table "lists", :force => true do |t|
    t.integer  "owner"
    t.string   "title"
    t.text     "body"
    t.integer  "parent"
    t.integer  "completed"
    t.string   "attachment"
    t.string   "permission"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medias", :force => true do |t|
    t.datetime "uploaded"
    t.integer  "owner"
    t.string   "type"
    t.string   "permission"
    t.string   "path"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", :force => true do |t|
    t.integer  "user"
    t.integer  "media"
    t.integer  "ranking"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "uname"
    t.string   "pwd"
    t.string   "fname"
    t.string   "mname"
    t.string   "lname"
    t.string   "email"
    t.string   "homepage"
    t.string   "address1"
    t.string   "address2"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "zip"
    t.string   "phone"
    t.string   "cell"
    t.string   "avatar"
    t.string   "group"
    t.string   "dir"
    t.string   "permission"
    t.datetime "created"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
