require 'pry'
@default_answers = [
		'It is certain.',
		'It is decidedly so.',
		'Without a doubt.',
		'Yes, definitely.',
		'You may rely on it.',
		'As I see it, yes.',
		'Most likely.',
		'Outlook good.'
	]
@user_answers = []
@combined_answers = []

puts "Welcome to the Magic Eightball!"
def main_menu	
	puts "\n--- Magic Eightball Menu ---"
	puts '1) Begin the Magic!'
	puts '2) Customize'
	puts '3) Quit'
	print '> '
	case user_input
		when '1'
			magic
		when '2'
			customize_menu
		when '3'	
			puts 'Thank you for using Magic Eightball. Goodbye!'
			exit
		else 
			puts 'Invalid input. Please try again!'
			main_menu
	end 
end

def customize_menu
	puts "\n--- Magic Eightball Customize Menu ---"
	puts '1) View Answers'
	puts '2) Add Answers'
	puts '3) Reset Answers'
	puts '4) Back to Main Menu'
	print '> '
	cust_menu
end 

def cust_menu
	choice = user_input
	case choice
		when '1'
			@default_answers2 = @default_answers.clone
			@user_answers2 = @user_answers.clone
			@combined_answers << @default_answers2.concat(@user_answers2)
 			@combined_answers.flatten.each_with_index do |x, i|
 			# puts "#{i + 1}. #{x}"
 			puts "#{x}"
 			end 
			# customize_menu
			main_menu
		when '2'
			puts "Enter answer you wish to add to Magic Eightball."
			print "> "
			new_answer = user_input
			@user_answers << new_answer
			customize_menu
		when '3'
			@user_answers.clear
			customize_menu
		when '4'
			main_menu
		else 
			"Invalid input. Please try again!"
			customize_menu
	end
end
# def array_loop
# 	@combined_answers = @default_answers.concat(@user_answers)
#  	@combined_answers.each_with_index do |x, i|
#  		puts "#{i + 1}. #{x}"
#  	end
# end 

def magic
	puts
	puts 'What is the question you want answered?'
	puts
	print "> "
	@answer = user_input.downcase

	if @answer == 'quit'
		main_menu
	end
	puts @default_answers.sample
	magic
end 



def user_input 
	gets.strip
end 


main_menu














