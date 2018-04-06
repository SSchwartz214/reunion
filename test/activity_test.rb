require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_it_has_attributes
    activity = Activity.new("hiking")

    assert_equal "hiking", activity.type
    assert_equal ({}), activity.participants
  end

  def test_add_participant
    activity = Activity.new("hiking")

    activity.add_participant("Chad", 10)
    activity.add_participant("Brad", 10)
    expected = {"Chad" => 10,
                "Brad" => 10
                }


    assert_equal expected, activity.participants
  end

  def test_total_cost
    activity = Activity.new("hiking")

    activity.add_participant("Chad", 10)
    activity.add_participant("Brad", 10)

    assert_equal 20, activity.total_cost

  end


end
