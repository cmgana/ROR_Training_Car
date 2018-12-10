class RenameColumnNameInTableMyCarToCarName < ActiveRecord::Migration[5.2]
  def change
	rename_column :my_cars ,:Name, :CarName
  end
end
