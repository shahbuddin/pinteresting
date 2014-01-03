class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :confirmable

  has_many :weights

  validates :name, presence: true
  validates :user_team, presence: true
  validates :user_location, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@(akamai\.com)\z/
  validates_format_of :name, :with => /\A[^0-9`!@#\$%\^&*+_=\<\>]+\z/

end
