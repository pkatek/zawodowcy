class User < ActiveRecord::Base
  before_save { email.downcase! }
  has_many :wzs
  has_many :wydanie
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :name, :surname, presence: true
  has_secure_password   
  validates :password, presence: true, length: { minimum: 6 }   
end
