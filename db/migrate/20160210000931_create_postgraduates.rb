class CreatePostgraduates < ActiveRecord::Migration
  def change
    create_table :postgraduates do |t|
      t.string :course
      t.string :study_center
      t.string :grade
      t.string :period
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
