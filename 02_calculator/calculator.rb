#write your code here
def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(a)
  a.reduce(0, :+)
end

def multiply(a)
  a.reduce(1, :*)
end

def power(a,b)
  a**b
end

def factorial(a)
  (a == 0) ? 0 : (1..a).reduce(1, :*)
end
