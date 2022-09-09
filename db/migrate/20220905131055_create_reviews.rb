class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.string :comment
      t.integer :mechanic_id
      t.timestamps
    end
  end
end
