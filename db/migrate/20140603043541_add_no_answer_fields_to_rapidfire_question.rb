class AddNoAnswerFieldsToRapidfireQuestion < ActiveRecord::Migration
  def change
    add_column :rapidfire_questions, :no_answer_fields, :boolean
  end
end
