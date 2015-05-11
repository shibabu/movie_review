class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :movie_length
      t.string :director
      t.decimal :rating
      t.references :user, index: true
      t.integer :user_id

      t.timestamps
    end
  end
end
