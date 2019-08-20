require 'pry'
require 'colorize'

# User inputs question
# Computer outputs random answer
# User inputs "QUIT"
# Computer outputs a goodbye message and exits
# Ability to add more answers:
# Via easter egg question ("add_answers")
# Do not let them add the same answer if the eight ball already has that answer
# Ability to reset answers back to the original bank (hint: think arr.clone)
# Via easter egg question ("reset_answers")
# Ability to have eight ball print all answers
# Via easter egg question ("print_answers")
#-------------------------------------------------------------------------
class Answers 
  def initialize

    @answers = [
      "No",
      "Perhaps, depends on the day",
      "Yes",
      "Maybe",
      "I hope not",
      "Ask me tomorrow",
      "Most definitely not",
      "Abosolutely",
      "It is certain",
      "Ask again later",
      "Very doubtful",
      "Dont count on it",
      "Sorry I wasn't listening"
      ]

  main_menu
  end

  def main_menu
    puts "--- Welcome to the Magic Eight Ball! ---"
    puts "1) Ask a question".colorize(:blue)
    puts "2) Add a question".colorize(:blue)
    puts "3) Show all answers".colorize(:blue)
    puts "4) Exit".colorize(:green)
    print ">"
    choice = gets.to_i
  case choice
    when 1
      ask_question
      # gets.strip 
    when 2
      add_answer
    when 3
      show_answers
    when 4
      puts  "Thanks for playing! Goodbye!".colorize(:green)
      exit!
    end
  end
 
    # main_menu
  def ask_question
    puts "Ask your question".colorize(:blue)
    puts 
    gets.strip
    puts @answers.sample
    puts 
    main_menu
  end
  
  def add_answer
    puts "Add your answer".colorize(:blue)
    new_answer = gets.strip
    # @new_answer = "Your mom"
    @answers << new_answer 
    puts "Hey we added *#{new_answer}* , to your answers."
    puts
    main_menu 
  end
  
  def show_answers
    puts "Question List" #add array of questions
    puts '--------------------'
    puts
    puts @answers 
    puts
    main_menu
  end
  
end

Answers.new



