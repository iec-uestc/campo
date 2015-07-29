class Users::InvitationsController < Users::ApplicationController
  before_action :login_required

  def index
    @invitation = Invitation.new
    @invitations = @user.invitations.order(:id)
  end

  def create
    @invitation = current_user.generate_invitation
  end
end
