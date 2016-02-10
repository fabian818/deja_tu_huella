class AddPersonToAcademic < ActiveRecord::Migration
  def change
    add_reference :academics, :person, index: true, foreign_key: true
  end
end
