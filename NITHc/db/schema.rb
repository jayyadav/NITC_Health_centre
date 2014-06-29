# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 3) do

  create_table "hc1s", :force => true do |t|
    t.integer  "prescription_no"
    t.string   "stu_id"
    t.date     "date"
    t.string   "disease"
    t.string   "test_prescription"
    t.string   "medicene_prescription"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hc2s", :force => true do |t|
    t.string   "stu_id"
    t.date     "date"
    t.integer  "prescription_no"
    t.string   "test_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hcs", :force => true do |t|
    t.string   "b_group",    :limit => nil
    t.integer  "age"
    t.string   "password",   :limit => nil
    t.string   "name"
    t.string   "stu_id"
    t.string   "course"
    t.string   "category"
    t.integer  "contact_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
