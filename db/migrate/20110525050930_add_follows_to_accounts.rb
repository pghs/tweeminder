class AddFollowsToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :follows, :boolean
  end

  def self.down
    remove_column :accounts, :follows
  end
end
