require "./email_reportable.rb"
require "./employee.rb"

module Actualize
  class Intern < Employee
    include EmailReportable
  end
end
