class Pin < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :image, :styles => { :large => "400x400>", :medium => "300x300>", :small => "200x200>", :thumb => "100x100>" }

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "images/gif"]

	validates :image, presence: true
end
