class ArticlesController < ApplicationController
    before_action :set_article, only: [:edit, :update, :show, :destroy]
# the above line will call the set_article method before the edit, update, show, destroy methods
    
    def show
        # debugger 
        #@article = Article.find(params[:id])
     # the above line will find the article with the id
    end

    def index
        @articles = Article.all
      
    end

    def new
        @article = Article.new
    end

    def edit
        #@article = Article.find(params[:id])

    end

    def update
        # debugger
        #@article = Article.find(params[:id])
        @article.update(article_params)
        if @article.save
            flash[:notice] = "Article was updated"
            # the above line will show the flash message
        redirect_to @article
        else
            render 'edit'
        end
    end

    def create
    #   render plain: params[:article]
      # the above line will show the params in the browser
        @article = Article.new(article_params)
        # the above line will create a new article
        # @article = Article.new(article_params)
        # render plain: params[:article]
        if @article.save
            flash[:notice] = "Article was created successfully"
            # the above line will show the flash message
            # a flash message is a message that will be shown only once
        redirect_to @article
        else
            render 'new'
            #the above line will render the new template
        end
        # redirect_to article_path(@article)
    end

    def destroy
        #@article = Article.find(params[:id])
        @article.destroy
        flash[:notice] = "Article was deleted successfully"
        redirect_to articles_path
        # the above line will redirect to the articles path
      
    end

    private 
    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description)
    end

end