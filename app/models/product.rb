class Product < ActiveRecord::Base

	has_attached_file :picture
	has_attached_file :film
	
	validates_presence_of :name
	validates_presence_of :price
	validates_attachment_presence :picture	
	validates_attachment_presence :film
	validates_uniqueness_of :name
end
