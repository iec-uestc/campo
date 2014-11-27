class Invitation < ActiveRecord::Base
  belongs_to :inviter, class_name: 'User'
  belongs_to :invitee, class_name: 'User'

  before_create :generate_code

  private

  def generate_code
    self.code = SecureRandom.base64(6)
  end

end
