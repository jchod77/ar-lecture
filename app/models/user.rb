class User < ActiveRecord::Base
	#3 things: 	1)What kind of thing (model) is it expecting?
	#   		2)That thing (model), where does it live (table)
	#   		3)What foreign key should it use to connect them
	#   			(foreign key on my table for belongs_to)
	#   			(foreign key on other table for has_many)
  has_many :authored_posts, class_name: :Post, foreign_key: :author_id

  has_many :answered_posts, through: :answers, source: :post

  has_many :comments, foreign_key: :commenter_id

end
