class AddPersonToPostgraduate < ActiveRecord::Migration
  def change
    add_reference :postgraduates, :person, index: true, foreign_key: true
  end
end
