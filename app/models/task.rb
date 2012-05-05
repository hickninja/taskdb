class Task < ActiveRecord::Base
  attr_accessible :description, :estimate, :milestone, :owner, :spent, :status, :title, :user_id
  belongs_to :user
end
