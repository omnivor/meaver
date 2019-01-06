class Post < ApplicationRecord
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }
	validates_attachment_content_type :image, content_type: /\Aimage/
	validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/,
													 /PNG\z/, /JPE?G\z/]
	do_not_validate_attachment_file_type :image
end
