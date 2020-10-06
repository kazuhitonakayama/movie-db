class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.text :name
      t.text :intro
      t.date :releasedate

      t.timestamps
    end
  end
end
