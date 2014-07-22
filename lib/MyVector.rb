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

end
