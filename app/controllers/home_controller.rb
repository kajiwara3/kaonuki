class HomeController < ApplicationController
#  before_filter :authenticate_user!
  def index
    logger.info "==========================="
    logger.info request.session_options[:id]
    logger.info "==========================="
  end
end
