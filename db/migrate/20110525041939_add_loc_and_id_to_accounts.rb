class AddLocAndIdToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :location, :string
    add_column :accounts, :twitter_id, :integer
  end

  def self.down
    remove_column :accounts, :twitter_id
    remove_column :accounts, :location
  end
end
