class AddAnswerPrefixAndAnswerSuffixToRapidfireQuestion < ActiveRecord::Migration
  def change
    add_column :rapidfire_questions, :answer_prefix, :string
    add_column :rapidfire_questions, :answer_suffix, :string
  end
end
