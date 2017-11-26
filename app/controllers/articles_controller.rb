class ArticlesController < ApplicationController
  

  def new
    @article = Article.new 
  end

  def create
    @article = Article.new(article_params)
    if @article.save 
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def index

  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
