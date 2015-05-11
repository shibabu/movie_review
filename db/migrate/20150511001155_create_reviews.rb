class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.integer :user_id
      t.integer :movie_id
      t.references :movie, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
