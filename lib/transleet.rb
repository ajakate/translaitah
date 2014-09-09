require "transleet/version"
require "uri-handler"
require "httparty"

class Transleet

  GOOGLE_TRANSLATE_TEMPLATE='http://translate.google.com/translate_a/t?client=t&text=[[sentence]]&hl=[[to]]&s' +
    'l=[[from]]&tl=[[to]]&ie=UTF-8&oe=UTF-8&multires=1&otf=1&pc=1&trs=1&ssel=3&tsel=6&sc=1'

  def initialize(from_language, to_language)
    @from_language = from_language
    @to_language = to_language
  end

  def translate(sentence)
    request_string = build_request(@from_language, @to_language, sentence)
    raw_response = HTTParty.get(request_string)
    parse_translation(raw_response)
  end

  def build_request(from, to, sentence)
    GOOGLE_TRANSLATE_TEMPLATE.gsub("[[sentence]]", sentence.to_uri)
      .gsub("[[to]]", to)
      .gsub("[[from]]", from)
  end

  def parse_translation(response)
    response.gsub("[","").gsub("\"","").split(',').first
  end

end
