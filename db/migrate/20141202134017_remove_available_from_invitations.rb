class RemoveAvailableFromInvitations < ActiveRecord::Migration
  def change
    remove_column :invitations, :available, :boolean
  end
end
