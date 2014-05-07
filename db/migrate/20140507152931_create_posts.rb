class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.integer		:author_id
  		t.string 		:title, length: 512
  		t.text   		:body

  		t.timestamps
  	end
  end
end
