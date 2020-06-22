class AnswersController < ApplicationController
  def answer
    if params[:question]
      @question = params[:question]
      @answer = generate_answer(@question)
    end
  end

  def generate_answer(query)
    if query == "I am going to work"
      "Great!"
    elsif query[-1] == "?"
      "Silly question, get dressed go to work!!!"
    else
      "I don't care get dressed and go to work"
    end
  end


end
