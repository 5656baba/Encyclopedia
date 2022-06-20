class SummariesController < ApplicationController
  def index
    @summaries = Summary.all
    @summary = Summary.new
  end

  def show
    @summary = Summary.find(params[:id])
  end

  def edit
    @summary = Summary.find(params[:id])
  end

  def update
    @summary = Summary.find(params[:id])
    @summary.update(summary_params)
  end

  def create
    Summary.create(summary_params)
    @summaries = Summary.all
  end

   def destroy
    @summary = Summary.find(params[:id])
    @summary.destroy
    redirect_to summaries_path
  end


  private
  def summary_params
    params.require(:summary).permit(:title, :sentence, :url, :genre_id)
  end
end
