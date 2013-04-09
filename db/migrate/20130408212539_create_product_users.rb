class CreateProductUsers < ActiveRecord::Migration
  def change
    create_table :product_users do |t|
      t.references :user
      t.references :product

      t.timestamps
    end
    add_index :product_users, :user_id
    add_index :product_users, :product_id
  end
end
