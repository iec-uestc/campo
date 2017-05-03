class AddIndexToInvitationsCode < ActiveRecord::Migration
  def change
    add_index :invitations, :code, unique: true
  end
end
