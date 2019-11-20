# observer
simple event bus

```
require_relative "domain_event_handler/employee_salary_updated_handler"
require_relative "domains/employee/update_salary"

update_salary_interactor = Employee::UpdateSalary.new("Jenkins", "programmer", 1000.0)

update_salary_interactor.subscribe(:salary_employee_updated, DomainEventHandler::EmployeeSalaryUpdatedHandler.new)

update_salary_interactor.execute(3000)
```