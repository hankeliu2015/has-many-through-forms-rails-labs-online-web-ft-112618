class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :all_blank

  # def user_attributes=(user_attributes)
  #   user = User.find_or_create_by(user_attributes)
  #   self.users << user
  # end
  #
  # def

  # def users_attributes=(user_attributes)
  #   user = Comment.find_or_create_by(user_attributes)
  # end

end
