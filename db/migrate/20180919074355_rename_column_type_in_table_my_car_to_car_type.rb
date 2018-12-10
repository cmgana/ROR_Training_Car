class RenameColumnTypeInTableMyCarToCarType < ActiveRecord::Migration[5.2]
  def change
rename_column :my_cars ,:Type, :CarType
  end
end
