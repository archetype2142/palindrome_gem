require "test_helper"

class Archetype2142PalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Archetype2142Palindrome::VERSION
  end

  def test_non_palindrome
   	assert !"apple".palindrome?
  end

  def test_literal_palindrome
  	assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
	assert "RaceCar".palindrome?	
  end

  def test_palindrome_with_punctuation
    assert "ra.c; e C'aR".palindrome?
  end
end
