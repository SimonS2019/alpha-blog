class User < ApplicationRecord
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
end