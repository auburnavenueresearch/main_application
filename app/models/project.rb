class Project < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :project_title, presence: true, length: { maximum: 90 }
	validates :description, presence: true, length: { maximum: 800 }
	validates :tools, presence: true, length: { maximum: 300 }
	validates :materials, presence: true, length: { maximum: 300 }
	validates :instructions, presence: true, length: { maximum: 1000}
	validates :user_id, presence: true
	mount_uploader :image, PicUploader
	mount_uploader :image1, PicUploader
	mount_uploader :image2, PicUploader
	mount_uploader :image3, PicUploader
end
