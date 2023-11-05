class ArticlesController < ApplicationController

    def show
        # debugger 
        @article = Article.find(params[:id])
     # the above line will find the article with the id
    end

    def index
        @articles = Article.all
      
    end

    def new
        @article = Article.new
    end

    def create
    #   render plain: params[:article]
      # the above line will show the params in the browser
        @article = Article.new(params.require(:article).permit(:title, :description))
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
end