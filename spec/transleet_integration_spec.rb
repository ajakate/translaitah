require 'spec_helper'

describe Transleet do

  describe '#translate' do

    it 'should return Hola for en -> es translation of hello' do

      translator = Transleet.new('en','es')
      returned_translation = translator.translate('Hello')

      expected_result = 'Hola'

      expect(returned_translation).to eq(expected_result)
    end

    it 'should return I don\'t like you for fr -> en translation of the french way to say that' do

      translator = Transleet.new('fr','en')
      returned_translation = translator.translate('Je ne vous aime pas bien')

      expected_result = 'I do not like you'

      expect(returned_translation).to eq(expected_result)
    end
  end
end
