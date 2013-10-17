gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class PickDesiredValuesTest < Minitest::Test
  def test_pick_even_numbers
    numbers = (1..10)
    evens = []
    numbers.each do |number|
      evens << number if number.even?
    end
    assert_equal [2, 4, 6, 8, 10], evens
  end

  def test_pick_odd_numbers
    # skip
    numbers = (1..10)
    odds = []
    numbers.each do |number|
      odds << number if number.odd?
    end
    assert_equal [1, 3, 5, 7, 9], odds
  end

  def test_pick_words_with_three_letters
    # skip
    selected = []
    words = %w(pill bad finger cat blue dog table red)
    words.each do |word|
      selected << word if word.length == 3
    end
    assert_equal %w(bad cat dog red), selected
  end

  def test_pick_words_with_more_than_three_letters
    # skip
    selected = []
    words = %w(pill bad finger cat blue dog table red)
    words.each do |word|
      selected << word if word.length > 3
    end
    assert_equal %w(pill finger blue table), selected
  end

  def test_pick_words_ending_in_e
    # skip
    selected = []
    words = %w(are you strike thinking belt piece warble sing pipe)
    words.each do |word|
      selected << word if word[-1] == "e"
    end
    assert_equal %w(are strike piece warble pipe), selected
  end

  def test_pick_words_ending_in_ing
    # skip
    selected = []
    words = %w(drought singing hat shoehorning purposeful)
    words.each do |word|
      selected << word if word[-3..-1] == "ing"
    end
    assert_equal %w(singing shoehorning), selected
  end
end

