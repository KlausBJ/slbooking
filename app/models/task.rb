class Task < ActiveRecord::Base
	has_many :responsibilities
	has_many :members, through: :responsibilities
end
