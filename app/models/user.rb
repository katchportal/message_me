class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable                  
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 3, maximum: 15},
            uniqueness: {case_sensitive: false } 
  has_many :messages
end
