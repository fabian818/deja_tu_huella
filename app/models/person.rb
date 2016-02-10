class Person < ActiveRecord::Base
	belongs_to :role
	belongs_to :politic_party

	has_many :academics
	has_many :postgraduates
	has_many :work_experiences
end
