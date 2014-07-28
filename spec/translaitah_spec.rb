require 'spec_helper'

describe Translaitah do

  describe '#translate' do

    it 'should do something' do

      translator = Translaitah.new("en","es")

      puts translator.translate("I am dumb")

      puts translator.translate("Why are you here?")

    end
  end
end
