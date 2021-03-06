module  DefaultSetTitle
  extend ActiveSupport::Concern

  included do
    before_action :set_title
  end

  def set_title
    @page_title = "Devcamp Portfolio"
    @seo_keywords = "Maciej Hyrycz Portfolio"
  end

end
