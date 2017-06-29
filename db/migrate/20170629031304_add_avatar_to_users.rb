class AddAvatarToUsers < ActiveRecord::Migration
  def change
  end

  def self.up
    add_attachment :friends, :avatar
  end

  def self.down
    remove_attachment :friends, :avatar
  end
end
