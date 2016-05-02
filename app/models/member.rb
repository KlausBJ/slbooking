class Member < ActiveRecord::Base
		has_many :registrations
		has_many :activities, through: :registrations
		has_many :responsibilities
		has_many :tasks, through: :responsibilities
end
