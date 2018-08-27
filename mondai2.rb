require 'matrix'
require 'test/unit'
# Mondai 2
module Mondai2
  # a, Test Matrix
  class TestMatrix < Test::Unit::TestCase
    def test_matrix
      a = [[1, 2], [3, 4]]
      b = [[2, 4], [1, 3]]
      assert_equal(b, MondaiNi.new.rotate_matrix(a))
    end
  end

  # b, rotate matrix n*n to the left 90
  class MondaiNi
    def init_matrix(num)
      m = Matrix.build(num) { rand(10) }
      m.to_a
    end

    def rotate_matrix(array)
      array.transpose.reverse
    end

    def print_matrix(array)
      array.each { |r| puts r.inspect }
    end
  end

  mondai_ni = MondaiNi.new

  matrix = mondai_ni.init_matrix(5)
  puts 'Matrix before rotate'
  mondai_ni.print_matrix(matrix)

  r_matrix = mondai_ni.rotate_matrix(matrix)
  puts 'Matrix after rotate'
  mondai_ni.print_matrix(r_matrix)
end
