class User < ApplicationRecord
    has_many :articles    
    validates :username, presence: true, 
    uniqueness: { case_sensitive: false }, 
    length: { minimum: 3, maximum: 25 }
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :email, presence: true, 
    uniqueness: { case_sensitive: false }, 
    length: { maximum: 105 },
    format: { with: VALID_EMAIL_REGEX }
    # user = User.new(username: "si", email: "simon@example.com")
    # user = User.new(username: "simon", email: "simon@example.com")
    # user.valid?
    # user.errors.full_messages
    # user.save


    # 130
    #rails generate migration add_user_id_to_articles user_id:integer
    # the above command will generate a migration file
    #rails db:migrate
    # the above command will run the migration file

    # article= Article.first
    # article.user

    # user = User.first
    # user.articles
    # user.articles << article
    # the above line will add the article to the user
    # article.user


end