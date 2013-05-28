class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  has_many :photos
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  attr_accessible :name, :email, :password, :password_confirmation,
                  :provider, :uid, :access_token

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    logger.info auth.provider
    unless user
      user = User.create({
        :name => auth.extra.raw_info.name,
        :provider => auth.provider,
        :uid => auth.uid,
        :email => 'fxcpeeg_warmansen_1369740475@tfbnw.net',#auth.info.email,
        :access_token => auth.credentials.token,
        :password => Devise.friendly_token[0, 20],
      })
    end
    user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end
