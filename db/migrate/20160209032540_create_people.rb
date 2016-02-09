class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.references :role, index: true, foreign_key: true
      t.references :politic_party, index: true, foreign_key: true
      t.string :full_name
      t.boolean :sex
      t.date :birthday
      t.string :dni
      t.string :birthplace

      t.timestamps null: false
    end
  end
end
