class Story
	attr_accessor :title, :url

	def initialize(title: title, url: url)
		@title=title
		@url=url
	end

	def self.get_mash_stories
		url='http://mashable.com/feed.json'
		response=JSON.load(RestClient.get(url))

		response["new"].map do |story|
			Story.new title: story["title"], url: story["link"]
		end
	end
end