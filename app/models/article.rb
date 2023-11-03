class Article < ApplicationRecord
 validates :title, presence: true
 #reload!
 #this above line is used to reload the model

 #article = Article.new
 #article.save
 #article.valid?
#article.errors
#article.errors.full_messages=>["Title can't be blank"]
validates :description, presence: true, length: {minimum: 10, maximum: 300}
#article.title = "My third article"
#article.description = "This is my third article"

 
# article = Article.new(title: "a", description: "b")
# article = Article.new(title: "a", description: "this is my forth article")
end