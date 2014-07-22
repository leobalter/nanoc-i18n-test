require 'i18n'
require 'i18n/backend/fallbacks'

I18n.enforce_available_locales = false
I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
I18n.load_path += Dir[File.expand_path('../../locale/**/*.yml', __FILE__)]
I18n.default_locale = :en
I18n.available_locales = %w[ en pt-BR ]

def parse_locale(item)
  _, locale, _ = item.raw_filename.split('/')
  locale = locale.to_sym
  locale = :en unless I18n.available_locales.include?(locale)
  locale
end

def set_locale
  I18n.locale = parse_locale(item)
end

def locale
  I18n.locale
end

def t(scope, options = {})
  I18n.t(scope, options)
end

def page_link_for_locale(language)
  item_for_locale = item.site.items.find do |page|
    page.attributes[:id] == item.attributes[:id] &&
    parse_locale(page) == language.to_sym
  end

  item_for_locale.identifier
end
