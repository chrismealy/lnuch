class Visit < ActiveRecord::Base
  belongs_to :spot
  attr_accessible :spot, :on
end
