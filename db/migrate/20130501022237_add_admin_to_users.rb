class AddAdminToUsers < ActiveRecord::Migration
  def self.up
    add_column :admins, :admin, :boolean, :default => false
  end

  def self.down
    remove_column :admins, :admin
  end
end