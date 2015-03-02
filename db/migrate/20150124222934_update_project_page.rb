class UpdateProjectPage < ActiveRecord::Migration
  def change
  	rename_column :projects, :status, :instructions
  end
end
