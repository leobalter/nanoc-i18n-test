# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

require 'i18n'

I18n.load_path = ['locale/en.yml', 'locale/pt.yml']

# Default to pt
I18n.locale = :pt
