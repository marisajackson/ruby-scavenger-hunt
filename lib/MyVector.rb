require 'matrix'

class MyVector < Vector

  def distance(v)
    Math.sqrt((self[0] - v[0])**2 + (self[1] - v[1])**2)
  end

  def self.pathlength(*v)
    length = 0
    0.upto(v.length - 2) do |i|
      v1 = v[i]
      v2 = v[i + 1]
      length += Math.sqrt((v1[0] - v2[0])**2 + (v1[1] - v2[1])**2)
    end
    length
  end

  def <<(i)
    MyVector.elements(self.to_a << i)
  end

  def angle_to(v)
    x = ((self[0]*self[1])+(v[0]*v[1]))/(Math.sqrt(self[1]**2+v[1]**2)*Math.sqrt(self[0]**2+v[0]**2))
    Math.acos(x)
  end

  def self.angle_to(v1, v2)
    x = v1.angle_to(v2)
  end

end
