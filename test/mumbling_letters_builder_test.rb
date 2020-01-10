require 'test/unit'
require_relative '../mumbling_letter_builder'

class MumblingLettersBuilderTest < Test::Unit::TestCase

  # mumble_letters('')
  # => ''
  def test_empty_string
    assert_equal '', MumblingLettersBuilder.new('').build
  end

  # mumble_letters('a')
  # => 'A'
  def test_single_char_string
    assert_equal 'A', MumblingLettersBuilder.new('a').build
  end

  # mumble_letters('abC')
  # => 'A-Bb-Ccc'
  def test_multiple_chars_string
    assert_equal 'A-Bb-Ccc', MumblingLettersBuilder.new('abc').build
  end

  #
  # mumble_letters('aBCd')
  # => 'A-Bb-Ccc-Dddd'
  def test_chars_string_with_up_down
    assert_equal 'A-Bb-Ccc-Dddd', MumblingLettersBuilder.new('aBCd').build
  end

  # mumble_letters('QWERTY')
  # => 'Q-Ww-Eee-Rrrr-Ttttt-Yyyyyy'
  def test_chars_string_upcase
    assert_equal 'Q-Ww-Eee-Rrrr-Ttttt-Yyyyyy', MumblingLettersBuilder.new('QWERTY').build
  end

  def test_many_other_cases
    assert_equal 'A-Bb-Ccc-Dddd', MumblingLettersBuilder.new('abcd').build
    assert_equal 'R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy', MumblingLettersBuilder.new('RqaEzty').build
    assert_equal 'C-Ww-Aaa-Tttt', MumblingLettersBuilder.new('cwAt').build
  end

end