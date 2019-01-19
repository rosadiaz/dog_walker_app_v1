class CreateDogTable < ActiveRecord::Migration[5.1]
  def change
    create_table :dog_tables do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :color
    end
  end
end
