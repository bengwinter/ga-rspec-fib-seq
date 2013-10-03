def fib(x)
  return x if (0..1).include? x
  (fibonacci(n - 1) + fibonacci(n - 2))
end
puts fibonacci(5)
