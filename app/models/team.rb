class Team < ActiveRecord::Base
  has_many :users
  belongs_to :users
end
