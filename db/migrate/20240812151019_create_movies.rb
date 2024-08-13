class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :tittle
      t.text :description
      t.string :director
      t.integer :duration

      t.timestamps
    end
  end
end
