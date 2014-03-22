class CategoriaEquipo < ActiveRecord::Base
validates_presence_of :nombre, :message=>"Gimme a Name"
validates_uniqueness_of :nombre, :message=>"Name already exists" 
validates_format_of :nombre, :with => /[a-zA-Z0-9_-]+/, :message=>"Invalid Name Format"
	def to_label
	"#{nombre}"
	end
end
