class Activity < ActiveRecord::Base
		has_many :registrations
		has_many :members, through: :registrations
end
