class AddImagesToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :image1, :string
  	add_column :projects, :image2, :string
  	add_column :projects, :image3, :string
  end
end
