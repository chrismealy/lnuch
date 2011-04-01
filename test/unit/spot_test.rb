require 'test_helper'

class SpotTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Spot.new.valid?
  end
end
