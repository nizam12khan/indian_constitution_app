class SearchController < ApplicationController
  def index
    query = params[:query]
    @articles = Article.where("number = ? OR title ILIKE ? OR content ILIKE ?", query.to_i, "%#{query}%", "%#{query}%").joins(:part)
    respond_to do |format|
      format.turbo_stream
      format.html { render :index }
    end
  end
end