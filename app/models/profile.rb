class Profile < ActiveRecord::Base
  attr_accessible :name, :city, :state, :zip, :phone, :address, :user_id, :image, :remote_image_url
  belongs_to :user
  validates :user_id, presence: true
  default_scope order: 'profiles.created_at DESC'
  mount_uploader :image, ImageUploader

end
