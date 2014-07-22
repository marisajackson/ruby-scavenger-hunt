require 'test_helper'

class MyVector < MiniTest::Unit::TestCase

  def setup
    @v1 = MyVector[4, 5]
    @v4 = MyVector[3, 4]
    @v3 = MyVector[2, 3]
  end

  def test_expression_vector_plus_integer
    @v4 = MyVector[2, 3]
    assert_equal @v, @v4 + 1
  end

end
