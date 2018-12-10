class CreateMyrentals < ActiveRecord::Migration[5.2]
  def change
    create_table :myrentals do |t|
      t.date :FromDate
      t.date :ToDate
      t.string :BorrowedBy
      t.integer :my_car_id

      t.timestamps
    end
  end
end
