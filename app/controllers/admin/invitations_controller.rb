class Admin::InvitationsController < Admin::ApplicationController
  def index
    @invitations = @user.invitations
  end

  def create
    current_user.generate_invitation
    redirect_to :back
  end
end