# students into array
students = [
	{:name => "Bibiana Am", :cohort => :dec},
	{:name => "Jin Da", :cohort => :dec},
	{:name => "Sanda Go", :chohort => :dec},
	{:name => "Hannah Ca", :cohort => :dec},
	{:name => "Huy Le", :cohort => :dec},
	{:name => "Marcin Wa", :cohort => :dec}
]

def print_header
	puts "The students of my chohort at Makers Academy"
	puts "-------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)