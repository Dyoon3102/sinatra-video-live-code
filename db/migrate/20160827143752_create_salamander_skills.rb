class CreateSalamanderSkills < ActiveRecord::Migration
  def change
    create_table :salamander_skills do |t|
      t.references :salamander, null: false
      t.references :skill, null: false

      t.timestamps null: false
    end
  end
end
