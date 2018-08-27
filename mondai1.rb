require 'test/unit'
require 'benchmark'
# Mondai 1
module Mondai1
  # A, check string is a palindrome
  class MondaiIchi
    def palindrome?(string)
      string == string.reverse
    end
  end
  string = 'たけやぶやけた'
  mondai = MondaiIchi.new
  puts mondai.palindrome?(string)

  # B, Unit Test
  class TestPalidrome < Test::Unit::TestCase
    def test_palidrome
      assert_equal(true, MondaiIchi.new.palindrome?('たけやぶやけた'))
      assert_equal(false, MondaiIchi.new.palindrome?('not palindrome'))
    end
  end

  # C, Benmark
  puts 'c, check benmark'
  puts Benchmark.measure {
    MondaiIchi.new.palindrome?('たけやぶやけた' * 500)
  }
end
