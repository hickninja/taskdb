class User < ActiveRecord::Base
  attr_accessible :email, :login, :name
  has_many :tasks
end
