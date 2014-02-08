class Projects < ActiveRecord::Base
	has_many 	 :teams
	has_many   :users
	belongs_to :teams
	belongs_to :users
end
