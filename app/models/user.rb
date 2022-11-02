class User < ApplicationRecord
  before_create :generate_secret

  def generate_secret
    self.secret = SecureRandom.uuid
  end
end
