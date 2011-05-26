class AddUserNameToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :user_name, :string
  end

  def self.down
    remove_column :accounts, :user_name
  end
end
