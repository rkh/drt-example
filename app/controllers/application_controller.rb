class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  around_action :set_locale_from_url

  private

  def set_locale_from_url
    super do
      p "hi"
      # replace with better logic, ie Accept-Language header based
      I18n.locale = 'de-DE' if I18n.locale == :de
      I18n.locale = 'en-US' if I18n.locale == :en
      yield
    end
  end
end
