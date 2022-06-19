class HomesController < ApplicationController
  def top
    @genres = Genre.all
    @questions = Question.all
    @question = Question.new
  end
end
