class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
	 

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.name = auth.info.name
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      #user.image = auth.info.image
      user.password = Devise.friendly_token[0,20]
      #user.access_token = auth.credentials.token
      #user.refresh_token = auth.credentials.refresh_token
      #user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
