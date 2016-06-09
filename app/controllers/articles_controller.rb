class ArticlesController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @ratings = Rating.where(article_id: @article.id)
    @rating = Rating.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.date = params[:date]
    @article.link = params[:link]
    @article.journalist_id = params[:journalist_id]

    if @article.save
      redirect_to "/articles", :notice => "Article created successfully."
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    @article.title = params[:title]
    @article.date = params[:date]
    @article.link = params[:link]
    @article.journalist_id = params[:journalist_id]

    if @article.save
      redirect_to "/articles", :notice => "Article updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])

    @article.destroy

    redirect_to "/articles", :notice => "Article deleted."
  end
end
