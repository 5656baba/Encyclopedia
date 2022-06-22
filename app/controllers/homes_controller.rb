class HomesController < ApplicationController
  def top
    @summaries = Summary.select(:id, :title)
    @genres = Genre.all
    @questions = Question.all
    @question = Question.new
  end
end
