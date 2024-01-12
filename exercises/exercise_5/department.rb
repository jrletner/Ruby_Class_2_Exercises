require_relative 'employee.rb'

class Department
  def initialize
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def remove_employee(employee_name)
    @employees.delete_if { |employee| employee.name == employee_name }
  end

  def list_employees
    @employees
  end

  def highest_paid_between(employee1, employee2)
    if employee1.is_paid_less_than?(employee2)
      employee2
    else
      employee1
    end
  end
end

# Create instances of Employee
employee1 = Employee.new("John Doe", "Developer", 70000)
employee2 = Employee.new("Jane Smith", "Manager", 80000)
employee3 = Employee.new("Jackie Jackson", "Sales", 60000)
employee4 = Employee.new("Jeremy Foo", "Marketing", 50000)

# Create an instance of Department
department = Department.new

# Add employees to the department
department.add_employee(employee1)
department.add_employee(employee2)
department.add_employee(employee3)
department.add_employee(employee4)

# List employees in the department
puts department.list_employees.map(&:name)

# Remove an employee from the department
department.remove_employee("John Doe")

# List employees in the department after removing an employee
puts department.list_employees.map(&:name)

# Identify the highest-paid employee among two
highest_paid = department.highest_paid_between(employee3, employee2)
puts highest_paid.name