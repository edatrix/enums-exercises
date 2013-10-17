gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreTheyAllTest < Minitest::Test

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false
    end
    refute all_zeros
  end

  def test_all_zeros
    # skip
    all_zeros = true
    numbers = [0, 0, 0, 0, 0, 0, 0, 0]
    numbers.each do |number|
      all_zeros = true if number == 0
    end
    assert all_zeros
  end

  def test_all_gone
    # skip
    all_gone = true
    words = %w(gone gone gone gone gone gone gone)
    words.each do |word|
      all_gone = true if word == "gone"
    end
    assert all_gone
  end

  def test_not_all_gone
    # skip
    all_gone = true
    words = %w(gone gone gone gone gone gone gone yepp)
    words.each do |word|
      all_gone = false unless word == "gone"
    end
    refute all_gone
  end

  def test_all_empty
    # skip
    all_empty = true
    words = ["", "", "", "", ""]
    words.each do |word|
      all_empty = true if word == ""
    end
    assert all_empty
  end

  def test_not_all_empty
    # skip
    all_empty = true
    words = ["full", "", "", "", "", ""]
    words.each do |word|
      all_empty = false unless word == ""
    end
    refute all_empty
  end
end

