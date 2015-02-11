class StoriesController < ApplicationController
  def index
  	@stories=Story.get_mash_stories
  end
end
