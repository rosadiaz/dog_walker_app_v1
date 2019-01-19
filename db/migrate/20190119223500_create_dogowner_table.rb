class CreateDogownerTable < ActiveRecord::Migration[5.1]
  def change
    create_table :dogowner_tables do |t|
      t.string :status
      t.timestamps
    end
  end
end
