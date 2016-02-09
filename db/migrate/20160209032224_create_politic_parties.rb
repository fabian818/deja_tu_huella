class CreatePoliticParties < ActiveRecord::Migration
  def change
    create_table :politic_parties do |t|
      t.string :name
      t.text :description
      t.string :ideology

      t.timestamps null: false
    end
  end
end
