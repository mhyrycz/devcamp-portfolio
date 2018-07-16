module Placeholder
  extend ActiveSupport::Concern # it loads helping modules to use later to do many more things with concerns

  def self.image_generator(height:,width:)
    "http://placehold.it/#{height}x#{width}"
  end
end
