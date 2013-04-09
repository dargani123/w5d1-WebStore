class Product < ActiveRecord::Base
  attr_accessible :name, :price

  has_many :product_users
  has_many :users, through: :product_users

  validates :name, presence: true

  def self.display_items(products)
    added_products = products.select{ |id, val| val.to_i != 0}
    self.find(added_products.keys)
        .map(&:name).join(", ")
  end
end
