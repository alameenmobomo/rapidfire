class AddDescriptionToRapidfireQuestionGroup < ActiveRecord::Migration
  def change
    add_column :rapidfire_question_groups, :description, :text
  end
end
