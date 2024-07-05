class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers.gsub(/\n/, ',').split(/,|\n/).map(&:to_i).reduce(:+)
  end
end