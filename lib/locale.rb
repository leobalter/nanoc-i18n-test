require 'i18n'

I18n.load_path = ['locale/en.yml', 'locale/pt.yml']

# Removing stuppid deprecated msg with this command below
I18n.enforce_available_locales = false

def locale(loc)
  I18n.locale = loc || :en
end
