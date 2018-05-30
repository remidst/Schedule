class RenameColumns < ActiveRecord::Migration[5.1]
  def change
  	rename_column :appointments, :start_time, :start
  	rename_column :appointments, :end_time, :end
  end
end
