class User < ApplicationRecord
  acts_as_voter
  validates :email, :name, :uniqueness => true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
