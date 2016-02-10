class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.string :work_place
      t.string :period
      t.string :area

      t.timestamps null: false
    end
  end
end
