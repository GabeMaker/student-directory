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
# and then print them
puts "The students of my chohort at Makers Academy"
puts "-------------"
students.each do |student|
	puts student
end
#finally we print the total
puts "Overall, we have #{students.length} great students"