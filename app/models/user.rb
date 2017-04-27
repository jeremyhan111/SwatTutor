require 'bcrypt'

class User < ActiveRecord::Base
  #validates :category, inclusion: ['Tutor', 'Tutee']
  validates :name, :presence => true
  validates :year, :presence => true
  has_many :posts, class_name: 'Post', dependent: :destroy
  has_many :reviews, class_name: 'Review', dependent: :destroy

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
