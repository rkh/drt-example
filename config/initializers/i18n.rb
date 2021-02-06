require "i18n/backend/fallbacks" 
I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
I18n.available_locales = %i[ en en-US en-GB de de-DE de-CH ]

RouteTranslator.config do |config|
  config.host_locales = { 'de.local' => :de, 'en.local' => :en }
end