# students into array
students = [
	"Gabriel Ar",
	"Bibiana Am",
	"Jin Da",
	"Sanda Go",
	"Hannah Ca",
	"Huy Le",
	"Marcin Wa",
	"The Alien",
	"The Joker",
]

def print_header
	puts "The students of my chohort at Makers Academy"
	puts "-------------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)