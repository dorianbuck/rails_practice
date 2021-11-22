class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :genre
      t.date :year
      t.string :image

      t.timestamps
    end
  end
end
