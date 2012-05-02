class Task < ActiveRecord::Base
  attr_accessible :description, :estimate, :milestone, :owner, :spent, :status, :title
  belongs_to :user
end
