class AddName < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :name, :string
  end
end
