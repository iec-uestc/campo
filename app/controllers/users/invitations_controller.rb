class Users::InvitationsController < ApplicationController
  def index
    @user = User.where('lower(username) = ?', params[:username].downcase).first!
    @invitations = @user.invitations
  end

  def new
    current_user.generate_invitation
    redirect_to :back
  end
end