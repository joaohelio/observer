require_relative 'message_bus'

class Payroll
  include MessageBus

  def initialize
    super()
    
    self.add_event_listener(:salary_employee_updated, method(:employee_salary_updated_event_handler))
  end

  def employee_salary_updated_event_handler(data)
    puts("Cut a new check for #{data[:name]}!")
    puts("His salary is now #{data[:salary]}!")
  end
end
