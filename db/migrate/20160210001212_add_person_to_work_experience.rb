class AddPersonToWorkExperience < ActiveRecord::Migration
  def change
    add_reference :work_experiences, :person, index: true, foreign_key: true
  end
end
