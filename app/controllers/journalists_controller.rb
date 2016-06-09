class JournalistsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @journalists = Journalist.all
  end

  def show
    @journalist = Journalist.find(params[:id])
    @articles = Article.where(journalist_id: @journalist.id)
    @article = Article.new
  end

  def new
    @journalist = Journalist.new
  end

  def create
    @journalist = Journalist.new
    @journalist.name = params[:name]
    @journalist.media = params[:media]

    if @journalist.save
      redirect_to "/journalists", :notice => "Journalist created successfully."
    else
      render 'new'
    end
  end

  def edit
    @journalist = Journalist.find(params[:id])
  end

  def update
    @journalist = Journalist.find(params[:id])

    @journalist.name = params[:name]
    @journalist.media = params[:media]

    if @journalist.save
      redirect_to "/journalists", :notice => "Journalist updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @journalist = Journalist.find(params[:id])

    @journalist.destroy

    redirect_to "/journalists", :notice => "Journalist deleted."
  end
end
