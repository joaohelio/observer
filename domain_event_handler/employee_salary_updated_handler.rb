require_relative "../domains/payroll/find"

module DomainEventHandler
  class EmployeeSalaryUpdatedHandler
    def execute(employee)
      Payroll::Find.new.execute(employee)
    end
  end
end