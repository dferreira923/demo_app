class Micropost < ActiveRecord::Base
	belongs_to :user
	validates :content, length: { maximum: 140 }
	validates :content, format: { without: /\s/ }
	validates :content, format: { with: /\A[a-zA-Z]+\z/,
    	message: "- Not gonna happen. Use a single world that's less than 140 characters for your post, sucka." }
end
