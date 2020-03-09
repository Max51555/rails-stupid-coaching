class QuestionsController < ApplicationController
  def ask
  end


  def answer
    @ask = params[:question]
    if @ask[-1, 1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif @ask == "I am going to work right now!"
      @answer = "great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

