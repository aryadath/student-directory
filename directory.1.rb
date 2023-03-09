def input_students
  puts "Please enter the student's name:"
  puts "To finish, hit return twice"

  # create an empty array
  students = []

  # get the user input (first name)
  name = gets.chomp

  # for when the code is not empty
  while !name.empty? do
    # add the student hash to the array
    puts "Please enter the student's hobbies:"
    hobbies = gets.chomp
    puts "Please enter the student's height:"
    height = gets.chomp.to_i
    students << {name: name, cohort: :november, hobbies: hobbies, height: height}
    puts "Now we have #{students.count} student#{students.count > 1 ? 's' : ''}"
    # get another name from user
    name = gets.chomp
  end

  # return array of students
  students
end


def print_header
    puts "The students of Villains Academy".center(50)
    puts "-------------".center(50)
end

# adjusted to print those less than 12
def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort) - Hobbies: #{student[:hobbies]}, Height: #{student[:height]} cm".center(50)
  end
end



def print_footer(names)
  puts "Overall, we have #{names.count} great student#{names.count > 1 ? 's' : ''}".center(50)
end

# call methods
students = input_students
print_header
print(students)
print_footer(students)
