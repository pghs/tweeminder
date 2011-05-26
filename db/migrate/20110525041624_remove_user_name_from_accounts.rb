class RemoveUserNameFromAccounts < ActiveRecord::Migration
  def self.up
    remove_column :accounts, :user_name
  end

  def self.down
    add_column :accounts, :user_name, :string
  end
end
