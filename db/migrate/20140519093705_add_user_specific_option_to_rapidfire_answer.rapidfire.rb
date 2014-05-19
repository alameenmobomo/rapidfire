# This migration comes from rapidfire (originally 20140519075228)
class AddUserSpecificOptionToRapidfireAnswer < ActiveRecord::Migration
  def change
    add_column :rapidfire_answers, :user_specific_option, :string
  end
end
