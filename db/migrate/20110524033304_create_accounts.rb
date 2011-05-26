class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :screen_name
      t.string :pic_url
      t.datetime :friended_at

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
