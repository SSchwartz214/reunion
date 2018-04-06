require 'pry'
class Activity
  attr_reader :type,
              :participants

  def initialize(type)
    @type = type
    @participants = {}
    @total_cost = 0

  end

  # binding.pry
  def add_participant(name, cost)
    @participants[name] = cost
  end

  def total_cost
    @participants.values.sum
  end

end
