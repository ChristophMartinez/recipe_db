class User < ApplicationRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable 
end
