class Edict < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :file, FileUploader

  validates_presence_of :name, :start, :end

end
