require 'i18n'

I18n.load_path = ['locale/en.yml', 'locale/pt.yml']

# Removing stuppid deprecated msg with this command below
I18n.enforce_available_locales = false

def locale(loc)
  loc = loc.split('/')[1] || :en
  I18n.locale = loc
end
