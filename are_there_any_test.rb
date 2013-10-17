gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreThereAnyTest < Minitest::Test
  def test_has_a_zero
    numbers = [2, 9, 3, 1, 0]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number == 0
    end
    assert has_zero
  end

  def test_has_zeros
    # skip
    has_zero = false
    numbers = [3, 1, 0, 7, 9, 0]
    numbers.each do |number|
      has_zero = true if number == 0
    end
    assert has_zero
  end

  def test_does_not_have_zero
    # skip
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each do |number|
      has_zero = false if number != 0
    end
    refute has_zero
  end

  def test_no_alice
    # skip
    has_alice = false
    names = %w(chuck charlene cory chris carl)
    names.each do |name|
      has_alice = false if name != "alice"
    end
    refute has_alice
  end

  def test_has_alice
    # skip
    has_alice = false
    names = %w(bill bob burton alice brandon)
    names.each do |name|
      has_alice = true if name.include?("alice")
    end
    assert has_alice
  end
end

