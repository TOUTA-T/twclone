ActiveRecord::Schema.define(version: 2020_10_02_023610) do

  enable_extension "plpgsql"

  create_table "clones", force: :cascade do |t|
    t.string "name"
    t.datetime "time"
    t.text "content"
  end

end
