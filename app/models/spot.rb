class Spot < ActiveRecord::Base
  has_many :visits
  attr_accessible :name, :count, :nixed
end
