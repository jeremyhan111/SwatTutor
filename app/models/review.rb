class Review < ActiveRecord::Base
  validates :rating, :presence => true
  validates :body, :presence => true
  belongs_to :user, class_name: 'User', foreign_key: :user_id
end
