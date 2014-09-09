require 'transleet/version'
require 'transleet'
# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
# Dir[File.expand_path('spec/support/**/*.rb')].each(&method(:require)) #{ |f| require f }
RSpec.configure do |config|
  # Spec Filtering
 # config.filter_run focus: true
 # config.run_all_when_everything_filtered = true
#  config.treat_symbols_as_metadata_keys_with_true_values = true

  # Output
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
