class CreateMechanics < ActiveRecord::Migration[6.1]
  def change
    create_table :mechanics do |t|
      t.string :shop_name
      t.string :mechanic_name
      t.integer :number
      t.string :email
      t.string :about
      t.integer :experience
      t.string :image_url
      t.string :category
      t.string :location
    end
  end
end
