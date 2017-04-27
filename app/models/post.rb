class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :body, :presence => true
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  belongs_to :subject, class_name: 'Subject', foreign_key: :subject_id
end
