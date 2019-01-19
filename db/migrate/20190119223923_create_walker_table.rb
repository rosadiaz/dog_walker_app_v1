class CreateWalkerTable < ActiveRecord::Migration[5.1]
  def change
    create_table :walker_tables do |t|
      t.timestamps
    end
  end
end
