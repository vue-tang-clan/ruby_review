require "./email_reportable.rb"
require "./employee.rb"

class Intern < Employee
  include EmailReportable
end
