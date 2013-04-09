class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, presence: true

      t.timestamps
    end
  end
end
