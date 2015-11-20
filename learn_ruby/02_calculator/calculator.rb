def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  # sum = 0;
    array.inject(0){|sum,element| sum + element}
  # if array == []
  #   sum = 0;
  # else
  #   for i in array
  #     sum += i
  #   end
  #     sum.to_i
  # end

end


def multiply(*num)
  num.inject(1){|result, num| result * num}
end

def power(num,power)
  num ** power
end

# def factorial(n)
#   if n == 0
#     1
#   else
#     n * factorial(n-1)
#   end
# end


def factorial(n)
  1 if n == 0
  (1..n).inject(1){|result, num| result * num}
end
