# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171204154839) do

  create_table "categories", primary_key: "cat_id", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=binary" do |t|
    t.binary "cat_title", limit: 255, default: "", null: false
    t.integer "cat_pages", default: 0, null: false
    t.integer "cat_subcats", default: 0, null: false
    t.integer "cat_files", default: 0, null: false
    t.index ["cat_pages"], name: "cat_pages"
  end

  create_table "links", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=binary" do |t|
    t.integer "cl_from", default: 0, null: false, unsigned: true
    t.binary "cl_to", limit: 255, default: "", null: false
    t.binary "cl_sortkey", limit: 230, default: "", null: false
    t.timestamp "cl_timestamp", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.binary "cl_sortkey_prefix", limit: 255, default: "", null: false
    t.binary "cl_collation", limit: 32, default: "", null: false
    t.string "cl_type", limit: 6, default: "page", null: false
    t.index ["cl_collation"], name: "cl_collation"
    t.index ["cl_from", "cl_to"], name: "cl_from", unique: true
    t.index ["cl_sortkey"], name: "index_links_on_cl_sortkey"
    t.index ["cl_to", "cl_timestamp"], name: "cl_timestamp"
    t.index ["cl_to", "cl_type", "cl_sortkey", "cl_from"], name: "cl_sortkey"
  end

end
