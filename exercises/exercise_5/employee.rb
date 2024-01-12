class Employee 
  attr_accessor :name, :position
  private attr_accessor :salary
  
  def initialize(name, position, salary)
    @name = name
    @position = position
    @salary = salary
  end

  def details 
   "Name: #{name}, Position: #{position}"
  end

  def is_paid_less_than?(other_employee)
    return nil if other_employee.nil?
    self_salary = self.instance_variable_get(:@salary)
    other_salary = other_employee.instance_variable_get(:@salary)
    self_salary < other_salary
  end
end
