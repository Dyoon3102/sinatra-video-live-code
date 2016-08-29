class CreateSalamanders < ActiveRecord::Migration
  def change
    create_table :salamanders do |t|
      t.string    :name, null: false
      t.string    :continent, null: false
      t.string    :color, null: false
      t.string    :password_digest, null: false

      t.timestamps null: false
    end
  end
end
