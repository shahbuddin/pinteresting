class AddUserTeamToUser < ActiveRecord::Migration
  def change
	add_column :users, :user_team, :string
  end
end
