class CreateMyCars < ActiveRecord::Migration[5.2]
  def change
    create_table :my_cars do |t|
      t.string :Name
      t.integer :Year
      t.string :Type

      t.timestamps
    end
  end
end
