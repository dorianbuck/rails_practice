ActiveRecord::Schema.define(version: 2021_11_22_210443) do

  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "genre"
    t.date "year"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
