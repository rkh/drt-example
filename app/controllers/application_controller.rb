class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  around_action :set_locale_from_url
end
