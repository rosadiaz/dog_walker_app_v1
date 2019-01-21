class ChangeRoleInUsersToUserableType < ActiveRecord::Migration[5.1]
  def change
    rename_table "users_tables", "users"
    rename_column :users, :role, :userable_type
  end
end
