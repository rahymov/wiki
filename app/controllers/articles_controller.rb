class ArticlesController < ApplicationController
  before_action :find_article, only: [:show]
  before_action :authenticate_user!, except: [:index, :show]
  def new
    @article = current_user.articles.build 
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save 
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    if @article.update
      redirect_to @article
    else

    end
  end

  def edit

  end

  def destroy
  end

  def show
  end

  def index
    @articles = Article.all.order("created_at DESC")
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
