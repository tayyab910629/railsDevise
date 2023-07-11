class User < ApplicationRecord
  has_many :transactions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

         devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :validatable

end
