class Integer

  def factors
    list = []
    2.upto(self - 1) do |i|
      if self % i == 0
        list.push(i)
      end
    end
    list
  end

end
