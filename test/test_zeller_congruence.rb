require_relative 'zeller_congruence'
require 'minitest/autorun'

class TestZellerCongruence < MiniTest::Unit::TestCase
  def test_01_zeller_congruence_exists
    ZellerCongruence.new()

  end

  def test_02_for_leap_year
  end

  def test_03_starts_on_sat
  end

  def test_04_6_weeks
  end

  def test_05_4_weeks
  end

  def test_06_non_leap_year
  end

  def test_07_leap_year_divisible_by_100_and_400
  end

  def test_08_outside_of_scope
  end

  def test_09_missing_argument
  end
end