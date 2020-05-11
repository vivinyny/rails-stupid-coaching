class QuestionsController < ApplicationController
  def ask
  end

  def answer
# The answer.html.erb will display the question you ask your coach as well as his answer.
    @question = params['question']

# If the message is I am going to work, the coach = "Great!""
    if @question == " I am going to work "
      return @answer = "Great!"
# If the message has a question mark ? coach = "Silly question, get dressed and go to work!"
    elsif @question.include? "?"
      return @answer = "Silly question, get dressed and go to work!"
# get dressed and go to work!
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
