# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_12_125240) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cocktails", force: :cascade do |t|
    t.string "name"
    t.text "recipe"
    t.string "glass_type"
    t.string "strIngredient1"
    t.string "strIngredient2"
    t.string "strIngredient3"
    t.string "strIngredient4"
    t.string "strIngredient5"
    t.string "strIngredient6"
    t.string "strIngredient7"
    t.string "strIngredient8"
    t.string "strIngredient9"
    t.string "strIngredient10"
    t.integer "strMeasure1"
    t.integer "strMeasure2"
    t.integer "strMeasure3"
    t.integer "strMeasure4"
    t.integer "strMeasure5"
    t.integer "strMeasure6"
    t.integer "strMeasure7"
    t.integer "strMeasure8"
    t.integer "strMeasure9"
    t.integer "strMeasure10"
    t.string "strDrinkThumb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "ingredient_type"
    t.bigint "user_id", null: false
    t.bigint "cocktail_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cocktail_id"], name: "index_ingredients_on_cocktail_id"
    t.index ["user_id"], name: "index_ingredients_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ingredients", "cocktails"
  add_foreign_key "ingredients", "users"
end
