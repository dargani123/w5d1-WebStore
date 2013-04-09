class User < ActiveRecord::Base
  attr_accessible :email, :password

  has_many :product_users
  has_many :products, through: :product_users

  validates :email, :password, presence: true


end
