require 'i18n'

LOCALES = {
  'en' => 'locale/en.yml',
  'pt' => 'locale/pt.yml',
  'pt-br' => 'locale/pt.yml'
};

I18n.load_path = LOCALES.values

# Removing stuppid deprecated msg with this command below
I18n.enforce_available_locales = false

def locale(loc)
  loc = loc.split('/')[1]
  if ! LOCALES.has_key?(loc)
    loc = :en
  end
  I18n.locale = loc
end
