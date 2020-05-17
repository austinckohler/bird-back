class CreateBirds < ActiveRecord::Migration[6.0]
  def change
    create_table :birds do |t|
      t.string :species
      t.integer :age
      t.string :size

      t.timestamps
    end
  end
end
