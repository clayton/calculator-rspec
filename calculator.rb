class Calculator
  def add(x,y)
    x + y
  end
  
  def divide(x,y)
    return "You can't divide by zero!" if y == 0
    x / y
  end
  
  def subtract(x,y)
    y - x
  end

  def multiply(x,y)
    x * y
  end
end