[![Build Status](https://travis-ci.org/ajakate/translaitah.svg?branch=master)](https://travis-ci.org/ajakate/translaitah)

# Translaitah

This gem is an API hack for google translate, allowing translation of all of the supported languages by google.

## Installation

Add this line to your application's Gemfile:

    gem 'translaitah'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install translaitah

## Usage

Translaitah creates an object for one way translation using google's two letter abbreviations.

    require 'translaitah'

    translator = Translaitah.new("en","es")
    translator.translate("Go to hell")
    # => "Vete al infierno"

It isn't perfect, but I mean, what is? It's online

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
