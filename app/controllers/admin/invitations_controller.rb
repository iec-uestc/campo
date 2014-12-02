class Admin::InvitationsController < Admin::ApplicationController
  def index
    @user = current_user
    @invitations = @user.invitations
  end

  def new
    current_user.generate_invitation
    redirect_to :back
  end
end