class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end 
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(params.require(:article).permit(:title, :description))
        redirect_to @article
    end
end