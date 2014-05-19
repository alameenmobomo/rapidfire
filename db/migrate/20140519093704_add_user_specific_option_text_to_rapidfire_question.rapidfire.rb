# This migration comes from rapidfire (originally 20140519074653)
class AddUserSpecificOptionTextToRapidfireQuestion < ActiveRecord::Migration
  def change
    add_column :rapidfire_questions, :user_specific_option_text, :string
  end
end
