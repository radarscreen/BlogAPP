class Post < ActiveRecord::Base
	 belongs_to :author
	 	validates :title, :body, :category, presence: true
	 	validates :title, length: {in: 3...20}
end


