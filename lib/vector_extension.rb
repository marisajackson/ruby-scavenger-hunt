class vector_extension < Vector

  def distance(vector)
    vector1 = self.to_a
    vector2 = vector.to_a
    distance = sqrt.((vector1[0] - vector2[0]).exp(2) + (vector1[1] - vector2[1]).exp(2))

    distance
  end

end
