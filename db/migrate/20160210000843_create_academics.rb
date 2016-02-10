class CreateAcademics < ActiveRecord::Migration
  def change
    create_table :academics do |t|
      t.string :university
      t.string :career
      t.string :period
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
