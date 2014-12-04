def print_header
	puts "The students of my chohort at Makers Academy"
	puts "-------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def input_students
	puts "Please entere the names of the students"
	puts "To finish, just hit return twice"
	#empty array
	students = []
	#get first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add student hash to array
		students << {:name => name, :cohort => :december}
		puts "Now we have #{students.length} students"
		# get another name
		name = gets.chomp
	end
	#return the array of students
	students
end 

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

students = input_students
print_header
print(students)
print_footer(students)

# # students into array
# students = [
# 	{:name => "Bibiana Am", :cohort => :dec},
# 	{:name => "Jin Da", :cohort => :dec},
# 	{:name => "Sanda Go", :chohort => :dec},
# 	{:name => "Hannah Ca", :cohort => :dec},
# 	{:name => "Huy Le", :cohort => :dec},
# 	{:name => "Marcin Wa", :cohort => :dec}
# ]

