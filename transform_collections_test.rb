gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class TransformCollectionTest < Minitest::Test
  def test_capitalize
    names = %w(alice bob charlie)
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    assert_equal %w(Alice Bob Charlie), capitalized_names
  end

  def test_doubles
    # skip
    doubles = []
    numbers = [1, 2, 3, 4, 5]
      numbers.each do |number|
        doubles << number*2
      end
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    # skip
    squares = []
    numbers = [1, 2, 3, 4, 5]
      numbers.each do |number|
        squares << number*number
      end
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    # skip
    lengths = []
    names = %w(alice bob charlie david eve)
      names.each do |name|
        lengths << name.length
      end
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    # skip
    zip_codes = []
    numbers = [234, 10, 9119, 38881]
      numbers.each do |number|
        zip_codes << number(0..4, "0")
      end
    assert_equal %w(00234 00010 09119 38881), zip_codes
  end

  def test_reverse
    # skip
    backwards = []
    names = %w(alice bob charlie david eve)
      names.each do |name|
        backwards << name.reverse
      end
    assert_equal %w(ecila bob eilrahc divad eve), backwards
  end
end

