class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular #current version portflio , self is important self means method for portfolio
      where(subtitle: "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults, only: [:new] #only added myself

  def set_defaults
    self.main_image ||= "http://via.placeholder.com/600x400"
    self.thumb_image ||= "http://via.placeholder.com/350x200"
  end

end
