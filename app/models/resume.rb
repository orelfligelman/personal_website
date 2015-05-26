class Resume < ActiveRecord::Base
	  mount_uploader :document, DocumentUploader
end
