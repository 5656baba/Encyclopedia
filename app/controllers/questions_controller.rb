class QuestionsController < ApplicationController
  def create
    Question.create(question_params)
    @questions = Question.all
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy!
    redirect_to root_path
  end

  private
  def question_params
    params.require(:question).permit(:title)
  end
end
