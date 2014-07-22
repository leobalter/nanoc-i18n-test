require 'i18n'
require 'i18n/backend/fallbacks'

I18n.enforce_available_locales = false
I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
I18n.load_path += Dir[File.expand_path('../../locale/**/*.yml', __FILE__)]
I18n.default_locale = :en
I18n.available_locales = %w[ en pt-BR ]

def set_locale_for_item(item)
  _, locale, _ = item.raw_filename.split('/')
  I18n.locale = :en
  I18n.locale = locale if I18n.available_locales.include?(locale.to_sym)
end

def locale
  I18n.locale
end

def t(scope, options = {})
  I18n.t(scope, options)
end
