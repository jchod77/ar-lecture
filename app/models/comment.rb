class Comment < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: :commenter_id
  #The 'polymorphic: true' call goes on the belongs_to side
  belongs_to :commentable, polymorphic: true
end
