require_relative 'message_bus'

class Employee
  include MessageBus

  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(salary)
    @salary = salary
    nofity_observers(:salary_employee_updated, {name: name, salary: salary})
  end
end
