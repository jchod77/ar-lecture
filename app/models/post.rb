class Post < ActiveRecord::Base
	#3 things: 	1)What kind of thing (model) is it expecting?
	#   		2)That thing (model), where does it live (table)
	#   		3)What foreign key should it use to connect them
	#   			(foreign key on my table for belongs_to)
	#   			(foreign key on other table for has_many)
  belongs_to :author, class_name: :User
  
 #Use the 'as: ' on the has_many side of the polmorphic association
  has_many :comments, as: :commentable
end
