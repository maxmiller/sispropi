class Edict < ActiveRecord::Base
  extended FriendlyId

  friendly_id :name, use: :slugged

  mount_uploader :file, FileUploader
end
