class AddTokensToUser < ActiveRecord::Migration
  def change
  	add_column :users, :short_term_token, :string
  	add_column :users, :long_term_token, :string
  end
end
