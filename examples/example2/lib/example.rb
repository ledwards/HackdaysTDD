class Example
  def self.fibonacci(n)
    if n < 2
      n
    else
      fibonacci(n-1) + fibonacci(n-2)
    end
  end
end
