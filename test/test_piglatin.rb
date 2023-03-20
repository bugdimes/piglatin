# frozen_string_literal: true

require "test_helper"

class TestPiglatin < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Piglatin::VERSION
  end

  {
    'pig': 'igpay',
    'latin': 'atinlay',
    'banana': 'ananabay',
    'happy': 'appyhay',
    'duck': 'uckday',
    'me': 'emay',
    'too': 'ootay',
    'will': 'illway',
    'real': 'ealray',
    'simple': 'implesay',
    'say': 'aysay',
    'bagel': 'agelbay',
    'fail': 'ailfay',
    'poo': 'oopay',
    'party': 'artypay',
    'lonely': 'onelylay',
    'friends': 'iendsfray',
    'smile': 'ilesmay',
    'string': 'ingstray',
    'stupid': 'upidstay',
    'glove': 'oveglay',
    'trash': 'ashtray',
    'floor': 'oorflay',
    'store': 'orestay',
    'eat': 'eatway',
    'omelet': 'omeletway',
    'are': 'areway',
    'egg': 'eggway',
    'explain': 'explainway',
    'always': 'alwaysway',
    'ends': 'endsway',
    'honest': 'honestway',
    'I': 'IWAY',
    'every': 'everyway',
    'another': 'anotherway',
    'under': 'underway',
    'island': 'islandway',
    'elegant': 'elegantway',
    'hello': 'ellohay',
    'yellow': 'ellowyay',
    'eat world': 'eatway orldway',
    'Hello': 'Ellohay',
    'Apples': 'Applesway',
    'eat... world?!': 'eatway... orldway?!',
    'school': 'oolschay',
    'quick': 'uickqay',
    "she's great!": "e'sshay eatgray!",
    'HELLO': 'ELLOHAY',
    'Hello There': 'Ellohay Erethay'
  }.each_pair do |input, expected_output|
    define_method "test_pig_latin_for_#{input.to_s}" do
      assert input.to_s.pig_latin_convert == expected_output, "failed for: #{input.to_s}, got #{input.to_s.pig_latin_convert} instead of #{expected_output}"
    end
  end
end
