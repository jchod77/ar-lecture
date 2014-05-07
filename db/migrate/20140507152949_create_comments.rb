class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		#2 fields required for a polymorphic table below
  		t.integer	:commentable_id, null: false #null: false means the field must be populated
  		t.string	:commentable_type
  		#---------------------------------------------
  		t.integer	:commenter_id
  		t.text		:body

  		t.timestamps
  	end
  end
end
