# Exercise 2
Use a diagram to group the methods in this example:

class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end

  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end

**Solution**

Catalogue | Method
------------ | -------------
Calculation | add(number_1, number_2) ; subtract(number_1, number_2)
Display | print_answer(answer)

**Solution**

class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end
end

class printer
  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end
