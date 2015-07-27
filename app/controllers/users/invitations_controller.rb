class Users::InvitationsController < Users::ApplicationController
  before_action :login_required

  def index
    @invitation = Invitation.new
    @invitations = @user.invitations
  end

  def create
    @invitation = current_user.generate_invitation
    redirect_back_or_default root_url
  end
end
