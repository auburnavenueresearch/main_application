class FixProject < ActiveRecord::Migration
  def change
  	rename_column :projects, :problem, :tools
  	rename_column :projects, :solution, :materials
  end
end
