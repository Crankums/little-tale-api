class Post < ApplicationRecord
    belongs_to :user
    has_many :comments

    validates :text, :title, :user, presence: true 
end
