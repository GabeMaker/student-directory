@students = []

def print_header
	puts "The students of my chohort at Makers Academy"
	puts "-------------"
end

def print_students_list
	@students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer
	puts "Overall, we have #{@students.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	#get first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add student hash to array
		@students << {:name => name, :cohort => :december}
		puts "Now we have #{@students.length} students"
		# get another name
		name = gets.chomp
	end
end 

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. Exit"
end

def show_students
	print_header
	print_students_list
	print_footer
end

def process(selection)
	case selection
	  	when "1"
	  		input_students
	  	when "2"
	  		show_students
	  	when "3"
	  		save_students
	  	when "4"
	  		load_students
	  	when "9"
	  		exit
	  	else
	  		puts "try again"
	end
end

def interactive_menu
	loop do
	  print_menu
	  process(gets.chomp)
  	end
end

def save_students
	# open the file for writing
	file = File.open("students.csv", "w")
	# iterate over array of students
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def load_students
	file = File.open("students.csv", "r")
	file.readlines.each do |line|
	name, cohort = line.chomp.split(',')
		@students << {:name => name, :cohort => cohort.to_sym}
	end
	file.close
end

interactive_menu


# students = input_students
# print_header
# print(students)
# print_footer(students)

# # students into array
# students = [
# 	{:name => "Bibiana Am", :cohort => :dec},
# 	{:name => "Jin Da", :cohort => :dec},
# 	{:name => "Sanda Go", :chohort => :dec},
# 	{:name => "Hannah Ca", :cohort => :dec},
# 	{:name => "Huy Le", :cohort => :dec},
# 	{:name => "Marcin Wa", :cohort => :dec}
# ]
