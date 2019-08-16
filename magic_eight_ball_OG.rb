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
  main_menu
  end

  def main_menu
    puts "--- Welcome to the Magic Eight Ball! ---"
    puts "1) Ask a question"
    puts "2) Add a question"
    puts "3) Show all answers"
    puts "4) Exit"
    print ">"
    choice = gets.to_i
  case choice
    when 1
      ask_question
      gets.strip 
    when 2
      add_question
    when 3
      show_questions
    when 4
      puts  "Thanks for playing! Goodbye!"
      exit
    end
  end
 
    # main_menu
  def ask_question
    puts "Ask your question"
    gets.strip
    main_menu
  end

  def add_question
    puts "Add your question"
    gets.strip 
    main_menu 
  end

  def show_questions
    puts "Question List" #add array of questions
    main_menu
  end
  
end

Answers.new 
      # main_menu
      # @answer = [
      # "No",
      # "Perhaps, depends on the day"
      # "Yes",
      # "Maybe",
      # "I hope not",
      # "Ask me tomorrow",
      # "Most definitely not",
      # "Abosolutely",
      # "It is certain",
      # "Ask again later",
      # "Very doubtful",
      # "Dont count on it",
      # "Sorry I wasn't listening"
      # ]


      # end
      # end


      # end



