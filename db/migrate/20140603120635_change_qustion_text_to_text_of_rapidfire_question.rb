class ChangeQustionTextToTextOfRapidfireQuestion < ActiveRecord::Migration
  def up
  	change_column :rapidfire_questions, :question_text, :text
  end

  def down
  	change_column :rapidfire_questions, :question_text, :string
  end
end
