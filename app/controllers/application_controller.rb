
#
# Main application controller
#
# @author [guillaumeh]
#
class ApplicationController < ActionController::Base
  skip_before_action :protect_from_forgery
  protect_from_forgery with: :exception
end
