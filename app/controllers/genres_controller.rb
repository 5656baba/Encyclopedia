class GenresController < ApplicationController
  def index
    @questions = Question.select(:title)
    @genres = Genre.all
    @genre = Genre.new
  end

  def create
    Genre.create(genre_params)
    @genres = Genre.all
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end
end
