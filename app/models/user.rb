class User < ApplicationRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	attr_accessor :pasword
	before_save :encrypt_password

	validates_confirmation_of :password
	validates_presence_of :pasword, :on => :create
	validates_presence_of :email
	validates_uniqueness_of :email

	def encrypt_password
		if password.present?
			self.pasword_salt = BCrypt::Engine.generate_salt
			self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
		end
	end
end
