require 'test_helper'

class VisitTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Visit.new.valid?
  end
end
