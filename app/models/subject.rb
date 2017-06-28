class Subject < ActiveRecord::Base
  	has_many :posts, class_name: 'Post', dependent: :destroy
end
