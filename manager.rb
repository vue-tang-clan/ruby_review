class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee1.print_info

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee2.print_info

employee1.give_annual_raise
puts employee1.first_name
puts employee1.last_name
puts employee1.active

employee1.active = false
puts employee1.active

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises
    puts "give all raises..."
    # With a times loop
    # index = 0
    # num_employees = @employees.length
    # num_employees.times do
    #   @employees[index].give_annual_raise
    #   index = index + 1
    # end

    # With an each loop
    # @employees.each do |employee|
    #   employee.give_annual_raise
    # end

    # With a one line each loop
    @employees.each { |employee| employee.give_annual_raise }

    p @employees
  end

  def fire_all_employees
    puts "Firing all employees..."
    # With a times loop
    # index = 0
    # num_employees = @employees.length
    # num_employees.times do
    #   @employees[index].active = false
    #   index = index + 1
    # end

    # With an each loop
    # @employees.each do |employee|
    #   employee.active = false
    # end

    # With a one line each loop
    @employees.each { |employee| employee.active = false }
    
    p @employees
  end
end

manager = Manager.new(
  first_name: "Saron",
  last_name: "Yitbarek",
  salary: 100000,
  active: true,
  employees: [employee1, employee2]
)
manager.print_info
manager.send_report
manager.give_all_raises
manager.fire_all_employees
