gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FilterUnwantedValuesTest < Minitest::Test
  def test_remove_zeros
    numbers = [2, 93, 7, 0, 0, 1, 0, 31, 0, 368]
    filtered = []
    numbers.each do |number|
      filtered << number unless number.to_s.include?("0")
    end
    assert_equal [2, 93, 7, 1, 31, 368], filtered
  end

  def test_remove_vowels
    # skip
    remaining = []
    letters = "all your base are belong to us".chars
    letters.each do |letter|
      remaining << letter.delete("a" "e" "i" "o" "u" "y")
    end
    assert_equal "ll r bs r blng t s", remaining.join
  end

  def test_remove_numbers_divisible_by_3
    # skip
    remaining = []
    numbers = (1..20)
    numbers.each do |number|
      remaining << number unless number%3 == 0
    end
    expected = [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20]
    assert_equal expected, remaining
  end

  def test_remove_words_with_more_than_three_letters
    # skip
    remaining = []
    words = %w(pill bad finger cat blue dog table red)
    words.each do |word|
      remaining << word if word.length <= 3
    end
    assert_equal %w(bad cat dog red), remaining
  end

  def test_remove_words_ending_in_e
    # skip
    remaining = []
    words = %w(are you strike thinking belt piece warble sing pipe)
    words.each do |word|
      remaining << word unless word[-1] == "e"
    end
    assert_equal %w(you thinking belt sing), remaining
  end

  def test_remove_words_ending_in_ing
    # skip
    remaining = []
    words = %w(drought singing hat shoehorning purposeful)
    words.each do |word|
      remaining << word unless word[-3..-1] == "ing"
    end
    assert_equal %w(drought hat purposeful), remaining
  end
end

