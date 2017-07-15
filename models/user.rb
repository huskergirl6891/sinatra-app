class User < ActiveRecord::Base
    has_many :tweets
    
    validates :name, presence: true
    validates :salutation, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
end