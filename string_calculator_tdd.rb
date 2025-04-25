class StringCalculatorTDD
    def add_numbers(numbers)
      return 0 if numbers.empty?
      numbers.split(',').map(&:to_i).sum
    end
end
  