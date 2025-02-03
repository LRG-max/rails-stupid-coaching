class QuestionsController < ApplicationController
  def ask
  end

  def answer

    @answer = ""
    @user_question = params[:answer].to_s
    if @user_question == "I am going to work"
      @answer = "Great!"
    elsif @user_question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    return @answer
  end
end
