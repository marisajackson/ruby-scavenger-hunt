require 'MyVector'
require 'test_helper'

class MyVectorTest < MiniTest::Unit::TestCase

  def setup
    @v1 = MyVector[4, 5]
    @v4 = MyVector[3, 4]
    @v3 = MyVector[2, 3]
  end

  def test_expression_vector_plus_integer
    @v4 = MyVector[2, 3]
    assert_equal @v, @v4 + 1
  end

  def test_shovel_into_vector
    @v1 << 4
    assert_equal "[4,5,4]", @v1.to_s
  end

end
