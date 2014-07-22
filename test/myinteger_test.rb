require 'myinteger'
require 'test_helper'

class MyIntegerTest < MiniTest::Unit::TestCase

  def test_factors
    assert_equal [2, 4, 5, 8, 10, 20], 40.factors
  end

end
