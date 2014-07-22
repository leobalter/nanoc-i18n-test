require 'i18n'

I18n.enforce_available_locales = false
I18n.load_path += Dir[File.expand_path('../../locale/**/*.yml', __FILE__)]
I18n.default_locale = :en
I18n.available_locales = %w[ en pt ]

def set_locale_for_item(item)
  _, locale, _ = item.raw_filename.split('/')
  I18n.locale = :en
  I18n.locale = locale if I18n.available_locales.include?(locale.to_sym)
end
