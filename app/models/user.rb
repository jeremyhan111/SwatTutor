require 'bcrypt'

class User < ActiveRecord::Base
  validates :category, :presence => true
  validates :name, :presence => true
  validates :year, :presence => true
  has_many :posts, class_name: 'Post', dependent: :destroy
  has_many :reviews, class_name: 'Review', dependent: :destroy
  attr_readonly :category

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    p 'hi'
    p new_password
    p 'bye'
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
