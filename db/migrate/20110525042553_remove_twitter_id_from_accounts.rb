class RemoveTwitterIdFromAccounts < ActiveRecord::Migration
  def self.up
    remove_column :accounts, :twitter_id
  end

  def self.down
    add_column :accounts, :twitter_id, :integer
  end
end
