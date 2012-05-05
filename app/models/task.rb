class Task < ActiveRecord::Base
  attr_accessible :description, :estimate, :milestone, :owner, :spent, :status, :title, :user_id
  belongs_to :user

  before_save :create_user_id

  private

  def create_user_id
    temp_user = User.find_by_login(self.owner)
    self.user_id = temp_user.nil? ? nil : temp_user.id
  end

end
