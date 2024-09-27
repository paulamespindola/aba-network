class Post < ApplicationRecord
    has_many :attachments
    has_many :comments, as: :commentable
    has_many :post_users, dependent: :destroy
    has_many :users, through: :post_users
  
    validates :content, presence: true
    validates :published, inclusion: { in: [true, false] }
end
