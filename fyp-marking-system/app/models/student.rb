class Student < ActiveRecord::Base

has_many :marks

has_attached_file :document
validates_attachment :document, :content_type => { :content_type => %w(application/pdf) }
end
