class User < ActiveRecord::Base

  has_secure_password

  validates :email, uniqueness: { case_sensitive: false }, presence: true
  validates :password, length: { minimum: 8 }

  has_many :reviews

  def self.authenticate_with_credentials(email, password)

  end


  def self.authenticate_with_credentials(email, password)
    # use create method from sessions_controller and pass in params
    user = User.find_by_email(email.strip.downcase)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end

end
