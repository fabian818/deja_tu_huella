class Person < ActiveRecord::Base
  belongs_to :role
  belongs_to :politic_party
end
