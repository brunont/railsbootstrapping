class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  # Not yet: :database_authenticatable, :recoverable, :validatable, 
  devise :rememberable, :trackable, :token_authenticatable #, :registerable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  # Default Behaviour: Work only with elements that has not been logically excluded
  default_scope where(:excluded => false)

  # Generate token unless one exists
  before_save :ensure_authentication_token
end
