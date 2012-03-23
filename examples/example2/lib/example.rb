class Example
  def self.fibonacci(n)
    raise "Fibonacci of non-integers is undefined" unless n.is_a? Integer
    if n < 2
      n
    else
      fibonacci(n-1) + fibonacci(n-2)
    end
  end
end
