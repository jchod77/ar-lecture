class CreateAnswers < ActiveRecord::Migration
  def change
  	create_table :answers do |t|
  		t.integer	:answerer_id
  		t.integer	:post_id
  		t.text		:body

  		t.timestamps
  	end
  end
end
