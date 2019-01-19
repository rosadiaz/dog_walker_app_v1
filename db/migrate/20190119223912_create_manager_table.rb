class CreateManagerTable < ActiveRecord::Migration[5.1]
  def change
    create_table :manager_tables do |t|
      t.timestamps
    end
  end
end
