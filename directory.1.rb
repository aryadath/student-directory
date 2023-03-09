def input_students
    puts "Please enter the students name"
    puts "To finish, hit return twice"

    # create an empty array
    students = []

    # get the user input (first name)
    name = gets.chomp

    # for when the code is not empty
    while !name.empty? do
       # add the student hash to the array
      students << {name: name, cohort: :november}
      puts "Now we have #{students.count} students"
       # get another name from user
      name = gets.chomp
    end
    # return array of students
    students
end

def print_header
    puts "The students of Villians Academy"
    puts "-------------"
end

# adjusted to print those less than 12
def print_students_with_short_name(students)
  students.each.with_index(1) do |student, index|
    if student[:name].length < 12
      puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# call methods
students = input_students
print_header
print_students_with_short_name(students)
print_footer(students)