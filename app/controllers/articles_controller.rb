class ArticlesController < ApplicationController

    def show
        debugger 
        @article = Article.find(params[:id])
     # the above line will find the article with the id

     #byebug

    end
end