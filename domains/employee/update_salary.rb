require_relative "../../lib/event_bus"

module Employee
  class UpdateSalary
    include EventBus

    attr_reader :name, :title, :salary
  
    def initialize(name, title, salary)
      super()
      @name = name
      @title = title
      @salary = salary
    end
  
    def execute(salary)
      @salary = salary
      
      nofity_observers(:salary_employee_updated, {name: name, salary: salary})
    end
  end
end