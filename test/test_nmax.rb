# frozen_string_literal: true

require 'test_helper'

class TestNmax < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Nmax::VERSION
  end

  def test_should_find_n_max
    file = File.open('test/fixtures/data.txt', mode: 'r')
    expected = [1000, 727]

    assert_equal expected, Nmax.max_numbers(2, file)
  end
end
