module CMSControllerHelper
  def self.included(base)
    base.class_eval do
      before_filter :get_pages
      helper_method :current_page
    end
    
    def current_page
      @page ||= Spree::Page.find_by_path(request.fullpath.to_s.gsub(/\?.*$/, ""))
    end
    
    def get_pages
      return if request.path =~ /^\/+admin/
      @pages ||= Spree::Page.visible.order(:position).all
    end

  end
end

Spree::BaseController.send :include, CMSControllerHelper
Devise::SessionsController.send :include, CMSControllerHelper
