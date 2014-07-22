require 'MyVector'
require 'test_helper'

class MyVectorTest < MiniTest::Unit::TestCase

  def setup
    @v1 = MyVector[4, 5]
    @v2 = MyVector[3, 4]
    @v3 = MyVector[2, 3]
  end

  # def test_expression_vector_plus_integer
  #   @v4 = MyVector[2, 3]
  #   assert_equal @v, @v4 + 1
  # end

  def test_shovel_into_vector
    assert_equal MyVector[4,5,4], @v1 << 4
  end

  def test_calculate_angle_instance
    assert_equal 1.5707963267948966, MyVector[0, 1].angle_to(MyVector[5,0])
  end

  def test_calculate_angle_class
    assert_equal 1.5707963267948966, MyVector.angle_to(MyVector[0,1], MyVector[5,0])
  end

end
