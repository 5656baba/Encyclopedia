class SummariesController < ApplicationController
  def index
    @genres = Genre.all
    @summary = Summary.new
    @summaries = Summary.where(genre_id: params[:genre_id])  #genreで検索した時
    if @summaries.empty?
      @summaries = Summary.all
    else
      @genre = Genre.find(params[:genre_id])
    end
  end

  def show
    @summaries = Summary.select(:id, :title)
    @summary = Summary.find(params[:id])
    @genres=Genre.all
  end

  def edit
    @summary = Summary.find(params[:id])
    @genres=Genre.all
  end

  def update
    @genres=Genre.all
    @summary = Summary.find(params[:id])
    @summary.update(summary_params)
    redirect_to summary_path(@summary.id)
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

  def search
    @genres = Genre.all
    params[:keywords]
    @summaries = Summary.search(params[:keywords])
    @keyword = params[:keywords]
    render "index"
  end


  private
  def summary_params
    params.require(:summary).permit(:title, :sentence, :url, :genre_id)
  end
end
