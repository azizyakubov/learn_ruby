#write your code here
def add (a,b)
  a+b
end

def subtract (a,b)
  a-b
end

def sum array
  answer = 0
  array.each do |n|
    answer += n
  end
  answer
end

def multiply (*values)
  answer = 1
  values.each do |n|
    answer*=n
  end
  answer
end

def power(a,b)
  a**b
end

def factorial(num)
  answer = 1
  i = num
  while i>0 do
    answer *=i
    i-= 1
  end
  answer
end
